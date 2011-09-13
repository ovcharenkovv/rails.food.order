class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :weight
      t.integer :week_day
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
