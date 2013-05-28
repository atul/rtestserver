require 'test_helper'

class TestbedOwnersControllerTest < ActionController::TestCase
  setup do
    @testbed_owner = testbed_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testbed_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testbed_owner" do
    assert_difference('TestbedOwner.count') do
      post :create, testbed_owner: @testbed_owner.attributes
    end

    assert_redirected_to testbed_owner_path(assigns(:testbed_owner))
  end

  test "should show testbed_owner" do
    get :show, id: @testbed_owner.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testbed_owner.to_param
    assert_response :success
  end

  test "should update testbed_owner" do
    put :update, id: @testbed_owner.to_param, testbed_owner: @testbed_owner.attributes
    assert_redirected_to testbed_owner_path(assigns(:testbed_owner))
  end

  test "should destroy testbed_owner" do
    assert_difference('TestbedOwner.count', -1) do
      delete :destroy, id: @testbed_owner.to_param
    end

    assert_redirected_to testbed_owners_path
  end
end
