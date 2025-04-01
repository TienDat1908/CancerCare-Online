# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :user

  validates :city, :country, :state, :street, :zip, presence: true

  scope :exclude_current, ->(address_id) { where.not(id: address_id) }

  before_create :set_primary_address

  private

  def set_primary_address
    return unless user.addresses.count.zero?

    self.primary_address = true
  end
end
