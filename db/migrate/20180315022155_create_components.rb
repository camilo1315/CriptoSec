class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.string :type_component
      t.float :price_component
      t.string :description_component
      t.string :brand_component
      t.float :sizes_component
      t.string :material_component


      t.integer :store_id

      t.timestamps
    end
  end
end
