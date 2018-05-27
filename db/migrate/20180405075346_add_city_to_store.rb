class AddCityToStore < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :city_id2, :integer
    add_index :stores, :city_id
  end
end
