class CreatePatients < ActiveRecord::Migration[7.2]
  def change
    create_table :patients do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date_of_birth
      t.string :gender
      t.string :blood_type

      t.timestamps
    end
  end
end
