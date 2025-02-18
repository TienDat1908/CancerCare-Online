class AddCancerIdToSymptoms < ActiveRecord::Migration[7.2]
  def change
    add_column :symptoms, :cancer_id, :bigint
  end
end
