require 'test_helper'

class AilmentsControllerTest < ActionController::TestCase
  setup do
    @ailment = ailments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ailments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ailment" do
    assert_difference('Ailment.count') do
      post :create, ailment: { Name: @ailment.Name, Remedy: @ailment.Remedy }
    end

    assert_redirected_to ailment_path(assigns(:ailment))
  end

  test "should show ailment" do
    get :show, id: @ailment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ailment
    assert_response :success
  end

  test "should update ailment" do
    patch :update, id: @ailment, ailment: { Name: @ailment.Name, Remedy: @ailment.Remedy }
    assert_redirected_to ailment_path(assigns(:ailment))
  end

  test "should destroy ailment" do
    assert_difference('Ailment.count', -1) do
      delete :destroy, id: @ailment
    end

    assert_redirected_to ailments_path
  end
end
