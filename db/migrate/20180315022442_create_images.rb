class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name
      t.references :imageable, polymorphic: true, index: true

      t.integer :bicycle_id
      t.integer :store_id
      t.integer :component_id
      t.integer :user_id

      t.timestamps
    end
  end
end
