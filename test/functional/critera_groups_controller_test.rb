require 'test_helper'

class CriteraGroupsControllerTest < ActionController::TestCase
  setup do
    @critera_group = critera_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:critera_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create critera_group" do
    assert_difference('CriteraGroup.count') do
      post :create, critera_group: { criteria_id: @critera_group.criteria_id }
    end

    assert_redirected_to critera_group_path(assigns(:critera_group))
  end

  test "should show critera_group" do
    get :show, id: @critera_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @critera_group
    assert_response :success
  end

  test "should update critera_group" do
    put :update, id: @critera_group, critera_group: { criteria_id: @critera_group.criteria_id }
    assert_redirected_to critera_group_path(assigns(:critera_group))
  end

  test "should destroy critera_group" do
    assert_difference('CriteraGroup.count', -1) do
      delete :destroy, id: @critera_group
    end

    assert_redirected_to critera_groups_path
  end
end
