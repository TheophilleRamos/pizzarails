require 'test_helper'

class PizzarailsControllerTest < ActionController::TestCase
  setup do
    @pizzarail = pizzarails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizzarails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizzarail" do
    assert_difference('Pizzarail.count') do
      post :create, pizzarail: { address: @pizzarail.address, name: @pizzarail.name, phone: @pizzarail.phone, price: @pizzarail.price, side_order: @pizzarail.side_order, size: @pizzarail.size }
    end

    assert_redirected_to pizzarail_path(assigns(:pizzarail))
  end

  test "should show pizzarail" do
    get :show, id: @pizzarail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizzarail
    assert_response :success
  end

  test "should update pizzarail" do
    put :update, id: @pizzarail, pizzarail: { address: @pizzarail.address, name: @pizzarail.name, phone: @pizzarail.phone, price: @pizzarail.price, side_order: @pizzarail.side_order, size: @pizzarail.size }
    assert_redirected_to pizzarail_path(assigns(:pizzarail))
  end

  test "should destroy pizzarail" do
    assert_difference('Pizzarail.count', -1) do
      delete :destroy, id: @pizzarail
    end

    assert_redirected_to pizzarails_path
  end
end
