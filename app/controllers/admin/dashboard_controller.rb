class Admin::DashboardController < Admin::AdminController

  def get_order_and_dishes_by_data data
    @orders = Order.orders_by_date data
    @orders_dishes_width_count = OrderDish.orders_dishes_width_count data
    @grand_total=0
    @orders_dishes_width_count.each do |c|
      @grand_total += c.dish.price.to_f*c.cnt.to_f
    end
    @previous_order = Order.previous_order_grouped
  end

  def index
    get_order_and_dishes_by_data Date.today
  end

  def show
    get_order_and_dishes_by_data params[:date]
  end

end