class Admin::DashboardController < Admin::AdminController

  def index
    @orders = Order.today_orders
    @count_order_dishes = OrderDish.count_order_dishes
    @grand_total=0
    @count_order_dishes.each do |c|
      @grand_total += c.dish.price*c.cnt
    end
  end

end