class AddColumnToPrescriptions < ActiveRecord::Migration[7.2]
  def change
    add_column :prescriptions, :start_date, :datetime
    add_column :prescriptions, :end_date, :datetime
    add_column :prescriptions, :frequency, :string
    add_column :prescriptions, :side_effects, :text
    add_column :prescriptions, :is_completed, :boolean
  end
end
