class CreateProdacts < ActiveRecord::Migration[6.0]
  def change
    create_table :prodacts do |t|
      t.string :name
      t.string :number
      t.string :group
      t.integer :enterprise_id

      t.timestamps
    end
  end
end
