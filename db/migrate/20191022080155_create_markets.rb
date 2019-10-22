class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.integer :enterprise_id
      t.string :name_mark
      t.string :phone
      t.string :name_cont

      t.timestamps
    end
  end
end
