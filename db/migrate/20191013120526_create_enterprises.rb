class CreateEnterprises < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprises do |t|
      t.string :name_ent
      t.string :code
      t.string :address
      t.string :phone
      t.integer :prodact_id
      t.integer :boss_id
      t.integer :market_id

      t.timestamps
    end
  end
end
