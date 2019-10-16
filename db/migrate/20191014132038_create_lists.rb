class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :prodact_id
      t.integer :enterprise_id
      t.string :price

      t.timestamps
    end
  end
end
