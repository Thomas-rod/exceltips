class RemoveUserFromFormation < ActiveRecord::Migration[6.0]
  def change
    remove_column :formations, :user_id
  end
end

# remove_foreign_key :accounts, :branches

# # Removes the foreign key on +accounts.owner_id+.
# remove_foreign_key :accounts, column: :owner_id

# # Removes the foreign key named +special_fk_name+ on the +accounts+ table.
# remove_foreign_key :accounts, name: :special_fk_name
