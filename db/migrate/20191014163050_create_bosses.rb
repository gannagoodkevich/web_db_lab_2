class CreateBosses < ActiveRecord::Migration[6.0]
  def change
    create_table :bosses do |t|
      t.integer :enterprise_id
      t.string :full_name
      t.string :job

      t.timestamps
    end
  end
end
