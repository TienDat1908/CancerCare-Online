class CreateTreatments < ActiveRecord::Migration[7.2]
  def change
    create_table :treatments do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end