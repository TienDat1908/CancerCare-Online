class AddCancerIdToCancerRiskFactors < ActiveRecord::Migration[7.2]
  def change
    add_column :cancer_risk_factors, :cancer_id, :bigint
  end
end
