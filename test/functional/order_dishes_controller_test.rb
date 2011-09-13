require 'test_helper'

class OrderDishesControllerTest < ActionController::TestCase
  setup do
    @order_dish = order_dishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_dishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_dish" do
    assert_difference('OrderDish.count') do
      post :create, :order_dish => @order_dish.attributes
    end

    assert_redirected_to order_dish_path(assigns(:order_dish))
  end

  test "should show order_dish" do
    get :show, :id => @order_dish.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @order_dish.to_param
    assert_response :success
  end

  test "should update order_dish" do
    put :update, :id => @order_dish.to_param, :order_dish => @order_dish.attributes
    assert_redirected_to order_dish_path(assigns(:order_dish))
  end

  test "should destroy order_dish" do
    assert_difference('OrderDish.count', -1) do
      delete :destroy, :id => @order_dish.to_param
    end

    assert_redirected_to order_dishes_path
  end
end
