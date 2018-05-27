class CreateBicycles < ActiveRecord::Migration[5.1]
  def change
    create_table :bicycles do |t|
      t.integer :id_bicy
      t.string :brand_bicy
      t.string :material_bicy
      t.string :components_bicy
      t.float :price_bicy
      t.string :usetype_bicy
      t.string :description_bicy

      
      t.integer :store_id

      t.timestamps
    end
  end
end
