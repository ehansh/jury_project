require 'test_helper'

class JuriesControllerTest < ActionController::TestCase
  setup do
    @jury = juries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jury" do
    assert_difference('Jury.count') do
      post :create, jury: { jury_form_id: @jury.jury_form_id }
    end

    assert_redirected_to jury_path(assigns(:jury))
  end

  test "should show jury" do
    get :show, id: @jury
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jury
    assert_response :success
  end

  test "should update jury" do
    put :update, id: @jury, jury: { jury_form_id: @jury.jury_form_id }
    assert_redirected_to jury_path(assigns(:jury))
  end

  test "should destroy jury" do
    assert_difference('Jury.count', -1) do
      delete :destroy, id: @jury
    end

    assert_redirected_to juries_path
  end
end
