class CreateCancerRiskFactors < ActiveRecord::Migration[7.2]
  def change
    create_table :cancer_risk_factors do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
