require 'test_helper'

class RemediesControllerTest < ActionController::TestCase
  setup do
    @remedy = remedies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remedies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remedy" do
    assert_difference('Remedy.count') do
      post :create, remedy: { ailment: @remedy.ailment, cure: @remedy.cure }
    end

    assert_redirected_to remedy_path(assigns(:remedy))
  end

  test "should show remedy" do
    get :show, id: @remedy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remedy
    assert_response :success
  end

  test "should update remedy" do
    patch :update, id: @remedy, remedy: { ailment: @remedy.ailment, cure: @remedy.cure }
    assert_redirected_to remedy_path(assigns(:remedy))
  end

  test "should destroy remedy" do
    assert_difference('Remedy.count', -1) do
      delete :destroy, id: @remedy
    end

    assert_redirected_to remedies_path
  end
end
