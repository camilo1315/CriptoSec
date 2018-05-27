class AddTechnicianToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :technician_id2, :integer
    add_index :transactions, :technician_id
  end
end
