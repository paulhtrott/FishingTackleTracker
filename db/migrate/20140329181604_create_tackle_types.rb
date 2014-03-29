class CreateTackleTypes < ActiveRecord::Migration
  def change
    create_table :tackle_types do |t|
      t.string :name
      
      t.timestamps
    end
    add_column :tackle_types, :tackle_categories, :string, array: true, default: []
    add_index :tackle_types, :tackle_categories, using: 'gin' 
  end
end
