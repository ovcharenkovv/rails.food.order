class Admin::OrderDishesController < Admin::AdminController
  # GET /order_dishes
  # GET /order_dishes.xml
  def index
    @order_dishes = OrderDish.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @order_dishes }
    end
  end

  # GET /order_dishes/1
  # GET /order_dishes/1.xml
  def show
    @order_dish = OrderDish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order_dish }
    end
  end

  # GET /order_dishes/new
  # GET /order_dishes/new.xml
  def new
    @order_dish = OrderDish.new

    respond_to do |format|
      format.html # new.html.haml
      format.xml  { render :xml => @order_dish }
    end
  end

  # GET /order_dishes/1/edit
  def edit
    @order_dish = OrderDish.find(params[:id])
  end

  # POST /order_dishes
  # POST /order_dishes.xml
  def create
    @order_dish = OrderDish.new(params[:order_dish])

    respond_to do |format|
      if @order_dish.save
        format.html { redirect_to(admin_order_dishes_url, :notice => 'Order dish was successfully created.') }
        format.xml  { render :xml => @order_dish, :status => :created, :location => @order_dish }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order_dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /order_dishes/1
  # PUT /order_dishes/1.xml
  def update
    @order_dish = OrderDish.find(params[:id])

    respond_to do |format|
      if @order_dish.update_attributes(params[:order_dish])
        format.html { redirect_to(admin_order_dishes_url, :notice => 'Order dish was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order_dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /order_dishes/1
  # DELETE /order_dishes/1.xml
  def destroy
    @order_dish = OrderDish.find(params[:id])
    @order_dish.destroy

    respond_to do |format|
      format.html { redirect_to(admin_order_dishes_url) }
      format.xml  { head :ok }
    end
  end
end
