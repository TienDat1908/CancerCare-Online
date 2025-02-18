class AddCancerIdToTreatments < ActiveRecord::Migration[7.2]
  def change
    add_column :treatments, :cancer_id, :bigint
  end
end
