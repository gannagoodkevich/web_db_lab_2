class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name_prodact
      t.string :name_enterprise
      t.string :price
      #t.references :prodact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
