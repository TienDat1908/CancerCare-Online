class CreateDoctors < ActiveRecord::Migration[7.2]
  def change
    create_table :doctors do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.integer :experience

      t.timestamps
    end
  end
end
