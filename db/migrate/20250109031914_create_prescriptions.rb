class CreatePrescriptions < ActiveRecord::Migration[7.2]
  def change
    create_table :prescriptions do |t|
      t.references :medical_record, null: false, foreign_key: true
      t.string :medication
      t.string :dosage
      t.text :instructions

      t.timestamps
    end
  end
end
