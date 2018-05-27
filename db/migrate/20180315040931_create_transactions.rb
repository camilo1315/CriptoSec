require "time"
class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :date_transaction
      t.string :type_transaction
      t.float :total_transaction

      t.integer :technician_id
      t.integer :store_id
      t.integer :user_id
      

      t.timestamps
    end
  end
end
