require 'test_helper'

class TestbedsControllerTest < ActionController::TestCase
  setup do
    @testbed = testbeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testbeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testbed" do
    assert_difference('Testbed.count') do
      post :create, testbed: @testbed.attributes
    end

    assert_redirected_to testbed_path(assigns(:testbed))
  end

  test "should show testbed" do
    get :show, id: @testbed.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testbed.to_param
    assert_response :success
  end

  test "should update testbed" do
    put :update, id: @testbed.to_param, testbed: @testbed.attributes
    assert_redirected_to testbed_path(assigns(:testbed))
  end

  test "should destroy testbed" do
    assert_difference('Testbed.count', -1) do
      delete :destroy, id: @testbed.to_param
    end

    assert_redirected_to testbeds_path
  end
end
