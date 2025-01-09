class CreateCancers < ActiveRecord::Migration[7.2]
  def change
    create_table :cancers do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :cancers, :name, unique: true
  end
end
