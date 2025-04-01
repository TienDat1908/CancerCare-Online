# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_one_attached :avatar

  belongs_to :admin_user
  belongs_to :organization, optional: true

  has_many :post_articles
  has_many :addresses, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :medical_records, dependent: :destroy
  has_many :created_medical_records, class_name: 'MedicalRecord', foreign_key: :created_by_user_id, dependent: :nullify

  has_one :primary_address, -> { where(primary_address: true) }, foreign_key: :user_id, class_name: 'Address'

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  before_validation :set_default_admin_user, on: :create

  delegate :city, :state, :zip, :street, :country, to: :primary_address, allow_nil: true

  enum :gender, { male: 'male', female: 'female' }

  enum :role, { patient: 'patient', doctor: 'doctor' }

  with_options on: :update_profile do
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :date_of_birth, presence: true
    validates :gender, inclusion: { in: %w[male female] }
    validates :phone_number, presence: true
    validates :role, inclusion: { in: %w[patient doctor] }
    validates :username, presence: true
  end

  ransacker :full_name do |parent|
    Arel::Nodes::InfixOperation.new('||',
                                    parent.table[:first_name], Arel::Nodes.build_quoted(' ')).concat(parent.table[:last_name])
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[id email phone_number full_name role]
  end

  def self.find_by_login(login)
    where('lower(email) = ? OR lower(username) = ?', login.downcase, login.downcase).first
  end

  private

  def set_default_admin_user
    self.admin_user ||= AdminUser.first
  end
end
