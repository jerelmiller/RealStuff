require 'test_helper'

class FeatureFlavorsControllerTest < ActionController::TestCase
  setup do
    @feature_flavor = feature_flavors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feature_flavors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feature_flavor" do
    assert_difference('FeatureFlavor.count') do
      post :create, :feature_flavor => @feature_flavor.attributes
    end

    assert_redirected_to feature_flavor_path(assigns(:feature_flavor))
  end

  test "should show feature_flavor" do
    get :show, :id => @feature_flavor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @feature_flavor.to_param
    assert_response :success
  end

  test "should update feature_flavor" do
    put :update, :id => @feature_flavor.to_param, :feature_flavor => @feature_flavor.attributes
    assert_redirected_to feature_flavor_path(assigns(:feature_flavor))
  end

  test "should destroy feature_flavor" do
    assert_difference('FeatureFlavor.count', -1) do
      delete :destroy, :id => @feature_flavor.to_param
    end

    assert_redirected_to feature_flavors_path
  end
end
