# frozen_string_literal: true
class CreateJoinTableCancerSymptom < ActiveRecord::Migration[7.2]
  def change
    create_join_table :cancers, :symptoms do |t|
      t.index %i[cancer_id symptom_id]
      t.index %i[symptom_id cancer_id]
    end
  end
end
