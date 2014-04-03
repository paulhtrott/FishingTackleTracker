class CreateMemberTackles < ActiveRecord::Migration
  def change
    create_table :member_tackles do |t|
      t.string :name
      t.text :description
      t.string :size
      t.integer :quantity
      t.string :color
      t.string :modelnumber
      t.string :shape
      t.string :length
      t.string :weight
      t.string :brand
      t.decimal :price
      t.string :picture

      t.timestamps
    end
  end
end
