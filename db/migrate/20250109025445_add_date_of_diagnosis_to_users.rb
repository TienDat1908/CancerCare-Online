class AddDateOfDiagnosisToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :date_of_diagnosis, :datetime
  end
end
