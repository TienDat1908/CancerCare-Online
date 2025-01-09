class CreateCancerStages < ActiveRecord::Migration[7.2]
  def change
    create_table :cancer_stages do |t|
      t.references :cancer, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
