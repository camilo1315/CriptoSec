class CreateTechnicians < ActiveRecord::Migration[5.1]
  def change
    create_table :technicians do |t|
      t.integer :id_technical
      t.string :NameTec
      t.string :SurnameTec
      t.string :typeworktec
      t.float :costhourtec
      t.string :passwordtec
      

      t.timestamps
    end
  end
end
