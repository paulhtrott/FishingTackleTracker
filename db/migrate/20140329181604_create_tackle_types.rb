class CreateTackleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :tackle_types do |t|
      t.string :name
      t.string :tackle_category

      t.timestamps
    end
    # indexing for columns
    add_index :tackle_types, :name, :unique => true
    add_index :tackle_types, :tackle_category
  end
end
