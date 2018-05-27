class AddUserToForums < ActiveRecord::Migration[5.1]
  def change
    add_column :forums, :user_id2, :integer
    add_index :forums, :user_id
  end
end
