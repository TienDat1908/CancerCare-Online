class AddPrescribedByToPrescriptions < ActiveRecord::Migration[7.2]
  def change
    add_column :prescriptions, :prescribed_by, :bigint, null: false
    add_foreign_key :prescriptions, :users, column: :prescribed_by
    add_index :prescriptions, :prescribed_by
  end
end
