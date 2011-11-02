require 'test_helper'

class RealtorsControllerTest < ActionController::TestCase
  setup do
    @realtor = realtors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realtors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realtor" do
    assert_difference('Realtor.count') do
      post :create, realtor: @realtor.attributes
    end

    assert_redirected_to realtor_path(assigns(:realtor))
  end

  test "should show realtor" do
    get :show, id: @realtor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realtor.to_param
    assert_response :success
  end

  test "should update realtor" do
    put :update, id: @realtor.to_param, realtor: @realtor.attributes
    assert_redirected_to realtor_path(assigns(:realtor))
  end

  test "should destroy realtor" do
    assert_difference('Realtor.count', -1) do
      delete :destroy, id: @realtor.to_param
    end

    assert_redirected_to realtors_path
  end
end
