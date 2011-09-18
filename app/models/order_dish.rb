class OrderDish < ActiveRecord::Base
  belongs_to :order
  belongs_to :dish

  def self.orders_dishes_width_count date
    find(:all,
         :joins => "LEFT JOIN dishes on order_dishes.dish_id = dishes.id LEFT JOIN orders on order_dishes.order_id = orders.id" ,
         :select => "dish_id, COUNT(*) AS cnt",
         :group =>"dishes.category_id, order_dishes.dish_id",
         :conditions => ["DATE(orders.created_at) = ?", date],
         :order => "dishes.category_id"
    )


    #select("dish_id, COUNT(*) AS cnt").group('dish_id').where('DATE(order_dishes.created_at) = ?', Date.today)

    #find_by_sql("SELECT *, COUNT(*) AS cnt FROM order_dishes  od WHERE DATE(created_at) = '#{Date.today}' GROUP BY dish_id;")
    #today =Time.now.midnight .. (Time.now.midnight + 1.day)
    #joins(:orders).where(:orders => {:created_at => today})
    #find(:all, :select => "*, COUNT(*) AS cnt", :where=>"DATE(created_at) = \"#{Date.today}\"", :group => "order_dishes.dish_id")
  end

  def self.today_orders
    where('DATE(created_at) = ?', Date.today)
  end

end
