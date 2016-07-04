require 'test_helper'

class TexiRoutesControllerTest < ActionController::TestCase
  setup do
    @texi_route = texi_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:texi_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create texi_route" do
    assert_difference('TexiRoute.count') do
      post :create, texi_route: { basicCharge: @texi_route.basicCharge, destination: @texi_route.destination, distance: @texi_route.distance, origin: @texi_route.origin, routename: @texi_route.routename }
    end

    assert_redirected_to texi_route_path(assigns(:texi_route))
  end

  test "should show texi_route" do
    get :show, id: @texi_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @texi_route
    assert_response :success
  end

  test "should update texi_route" do
    patch :update, id: @texi_route, texi_route: { basicCharge: @texi_route.basicCharge, destination: @texi_route.destination, distance: @texi_route.distance, origin: @texi_route.origin, routename: @texi_route.routename }
    assert_redirected_to texi_route_path(assigns(:texi_route))
  end

  test "should destroy texi_route" do
    assert_difference('TexiRoute.count', -1) do
      delete :destroy, id: @texi_route
    end

    assert_redirected_to texi_routes_path
  end
end
