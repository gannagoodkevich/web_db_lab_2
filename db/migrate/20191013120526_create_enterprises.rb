class CreateEnterprises < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprises do |t|
      t.string :name_ent
      t.string :code
      t.string :address
      t.string :phone
      
      t.timestamps
    end
  end
end
