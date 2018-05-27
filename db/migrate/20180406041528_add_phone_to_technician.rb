class AddPhoneToTechnician < ActiveRecord::Migration[5.1]
  def change
    add_column :technicians, :phonenumtec, :integer , :limit => 8
  end
end
