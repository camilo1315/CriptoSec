class AddAuthenticationTokenToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :authentication_token, :string, limit: 30
    add_index :stores, :authentication_token, unique: true
  end
end
