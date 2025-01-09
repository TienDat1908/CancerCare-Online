class AddSpecializationToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :specialization, :string
  end
end
