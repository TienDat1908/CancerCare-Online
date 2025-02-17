class AddOrganizationToUsers < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :organization, foreign_key: true, index: true
  end
end
