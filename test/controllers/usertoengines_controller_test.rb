require 'test_helper'

class UsertoenginesControllerTest < ActionController::TestCase
  setup do
    @usertoengine = usertoengines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usertoengines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usertoengine" do
    assert_difference('Usertoengine.count') do
      post :create, usertoengine: {  }
    end

    assert_redirected_to usertoengine_path(assigns(:usertoengine))
  end

  test "should show usertoengine" do
    get :show, id: @usertoengine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usertoengine
    assert_response :success
  end

  test "should update usertoengine" do
    patch :update, id: @usertoengine, usertoengine: {  }
    assert_redirected_to usertoengine_path(assigns(:usertoengine))
  end

  test "should destroy usertoengine" do
    assert_difference('Usertoengine.count', -1) do
      delete :destroy, id: @usertoengine
    end

    assert_redirected_to usertoengines_path
  end
end
