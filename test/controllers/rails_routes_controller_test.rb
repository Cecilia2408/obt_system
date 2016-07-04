require 'test_helper'

class RailsRoutesControllerTest < ActionController::TestCase
  setup do
    @rails_route = rails_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rails_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rails_route" do
    assert_difference('RailsRoute.count') do
      post :create, rails_route: { destination: @rails_route.destination, origin: @rails_route.origin, price: @rails_route.price, routename: @rails_route.routename }
    end

    assert_redirected_to rails_route_path(assigns(:rails_route))
  end

  test "should show rails_route" do
    get :show, id: @rails_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rails_route
    assert_response :success
  end

  test "should update rails_route" do
    patch :update, id: @rails_route, rails_route: { destination: @rails_route.destination, origin: @rails_route.origin, price: @rails_route.price, routename: @rails_route.routename }
    assert_redirected_to rails_route_path(assigns(:rails_route))
  end

  test "should destroy rails_route" do
    assert_difference('RailsRoute.count', -1) do
      delete :destroy, id: @rails_route
    end

    assert_redirected_to rails_routes_path
  end
end
