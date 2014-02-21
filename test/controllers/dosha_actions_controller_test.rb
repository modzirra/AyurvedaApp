require 'test_helper'

class DoshaActionsControllerTest < ActionController::TestCase
  setup do
    @dosha_action = dosha_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dosha_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dosha_action" do
    assert_difference('DoshaAction.count') do
      post :create, dosha_action: { Dosha: @dosha_action.Dosha, Movement: @dosha_action.Movement }
    end

    assert_redirected_to dosha_action_path(assigns(:dosha_action))
  end

  test "should show dosha_action" do
    get :show, id: @dosha_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dosha_action
    assert_response :success
  end

  test "should update dosha_action" do
    patch :update, id: @dosha_action, dosha_action: { Dosha: @dosha_action.Dosha, Movement: @dosha_action.Movement }
    assert_redirected_to dosha_action_path(assigns(:dosha_action))
  end

  test "should destroy dosha_action" do
    assert_difference('DoshaAction.count', -1) do
      delete :destroy, id: @dosha_action
    end

    assert_redirected_to dosha_actions_path
  end
end
