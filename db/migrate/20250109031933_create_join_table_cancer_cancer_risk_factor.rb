class CreateJoinTableCancerCancerRiskFactor < ActiveRecord::Migration[7.2]
  def change
    create_join_table :cancers, :cancer_risk_factors do |t|
      t.index %i[cancer_id cancer_risk_factor_id]
      t.index %i[cancer_risk_factor_id cancer_id]
    end
  end
end
