class CreateMemberTackles < ActiveRecord::Migration[5.1]
  def change
    create_table :member_tackles do |t|
      t.string :name, index: true
      t.text :description
      t.string :size
      t.integer :quantity
      t.string :color
      t.string :modelnumber
      t.string :shape
      t.string :length
      t.string :weight
      t.string :brand
      t.integer :quantity_wanted
      t.decimal :price, precision: 12, scale: 2
      t.references :user, index: true
      t.references :tackle_type, index: true

      t.timestamps
    end
  end
end
