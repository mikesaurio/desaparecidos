require 'test_helper'

class MissingsControllerTest < ActionController::TestCase
  setup do
    @missing = missings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create missing" do
    assert_difference('Missing.count') do
      post :create, missing: { detail: @missing.detail, name: @missing.name, picture: @missing.picture, since: @missing.since, status: @missing.status, where_missing: @missing.where_missing }
    end

    assert_redirected_to missing_path(assigns(:missing))
  end

  test "should show missing" do
    get :show, id: @missing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @missing
    assert_response :success
  end

  test "should update missing" do
    patch :update, id: @missing, missing: { detail: @missing.detail, name: @missing.name, picture: @missing.picture, since: @missing.since, status: @missing.status, where_missing: @missing.where_missing }
    assert_redirected_to missing_path(assigns(:missing))
  end

  test "should destroy missing" do
    assert_difference('Missing.count', -1) do
      delete :destroy, id: @missing
    end

    assert_redirected_to missings_path
  end
end
