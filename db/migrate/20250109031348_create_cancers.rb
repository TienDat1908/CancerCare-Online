class CreateCancers < ActiveRecord::Migration[7.2]
  def change
    create_table :cancers do |t|
      t.references :medical_record, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
