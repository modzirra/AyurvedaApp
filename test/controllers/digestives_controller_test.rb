require 'test_helper'

class DigestivesControllerTest < ActionController::TestCase
  setup do
    @digestive = digestives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:digestives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create digestive" do
    assert_difference('Digestive.count') do
      post :create, digestive: { flavor_id: @digestive.flavor_id, ingredient_id: @digestive.ingredient_id }
    end

    assert_redirected_to digestive_path(assigns(:digestive))
  end

  test "should show digestive" do
    get :show, id: @digestive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @digestive
    assert_response :success
  end

  test "should update digestive" do
    patch :update, id: @digestive, digestive: { flavor_id: @digestive.flavor_id, ingredient_id: @digestive.ingredient_id }
    assert_redirected_to digestive_path(assigns(:digestive))
  end

  test "should destroy digestive" do
    assert_difference('Digestive.count', -1) do
      delete :destroy, id: @digestive
    end

    assert_redirected_to digestives_path
  end
end
