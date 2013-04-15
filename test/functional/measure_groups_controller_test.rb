require 'test_helper'

class MeasureGroupsControllerTest < ActionController::TestCase
  setup do
    @measure_group = measure_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measure_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measure_group" do
    assert_difference('MeasureGroup.count') do
      post :create, measure_group: { measure_id: @measure_group.measure_id, name: @measure_group.name }
    end

    assert_redirected_to measure_group_path(assigns(:measure_group))
  end

  test "should show measure_group" do
    get :show, id: @measure_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measure_group
    assert_response :success
  end

  test "should update measure_group" do
    put :update, id: @measure_group, measure_group: { measure_id: @measure_group.measure_id, name: @measure_group.name }
    assert_redirected_to measure_group_path(assigns(:measure_group))
  end

  test "should destroy measure_group" do
    assert_difference('MeasureGroup.count', -1) do
      delete :destroy, id: @measure_group
    end

    assert_redirected_to measure_groups_path
  end
end
