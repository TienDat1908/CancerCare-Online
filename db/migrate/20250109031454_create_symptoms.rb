class CreateSymptoms < ActiveRecord::Migration[7.2]
  def change
    create_table :symptoms do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
