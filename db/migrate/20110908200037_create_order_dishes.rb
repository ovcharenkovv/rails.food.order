class CreateOrderDishes < ActiveRecord::Migration
  def self.up
    create_table :order_dishes do |t|
      t.integer :dish_id
      t.integer :order_id
      t.timestamps
    end
  end

  def self.down
    drop_table :order_dishes
  end
end
