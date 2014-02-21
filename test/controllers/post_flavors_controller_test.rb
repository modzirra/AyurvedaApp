require 'test_helper'

class PostFlavorsControllerTest < ActionController::TestCase
  setup do
    @post_flavor = post_flavors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_flavors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_flavor" do
    assert_difference('PostFlavor.count') do
      post :create, post_flavor: { Name: @post_flavor.Name }
    end

    assert_redirected_to post_flavor_path(assigns(:post_flavor))
  end

  test "should show post_flavor" do
    get :show, id: @post_flavor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_flavor
    assert_response :success
  end

  test "should update post_flavor" do
    patch :update, id: @post_flavor, post_flavor: { Name: @post_flavor.Name }
    assert_redirected_to post_flavor_path(assigns(:post_flavor))
  end

  test "should destroy post_flavor" do
    assert_difference('PostFlavor.count', -1) do
      delete :destroy, id: @post_flavor
    end

    assert_redirected_to post_flavors_path
  end
end
