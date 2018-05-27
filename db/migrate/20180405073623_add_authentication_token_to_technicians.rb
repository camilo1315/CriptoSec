class AddAuthenticationTokenToTechnicians < ActiveRecord::Migration[5.1]
  def change
    add_column :technicians, :authentication_token, :string, limit: 30
    add_index :technicians, :authentication_token, unique: true
  end
end
