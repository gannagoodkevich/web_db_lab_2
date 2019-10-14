class CreateBosses < ActiveRecord::Migration[6.0]
  def change
    create_table :bosses do |t|
      t.string :enterprise_name
      t.string :full_name
      t.string :job

      t.timestamps
    end
  end
end
