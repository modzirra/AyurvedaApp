require 'test_helper'

class PreFlavorsControllerTest < ActionController::TestCase
  setup do
    @pre_flavor = pre_flavors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pre_flavors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pre_flavor" do
    assert_difference('PreFlavor.count') do
      post :create, pre_flavor: { Name: @pre_flavor.Name }
    end

    assert_redirected_to pre_flavor_path(assigns(:pre_flavor))
  end

  test "should show pre_flavor" do
    get :show, id: @pre_flavor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pre_flavor
    assert_response :success
  end

  test "should update pre_flavor" do
    patch :update, id: @pre_flavor, pre_flavor: { Name: @pre_flavor.Name }
    assert_redirected_to pre_flavor_path(assigns(:pre_flavor))
  end

  test "should destroy pre_flavor" do
    assert_difference('PreFlavor.count', -1) do
      delete :destroy, id: @pre_flavor
    end

    assert_redirected_to pre_flavors_path
  end
end
