require 'test_helper'

class JuryFormsControllerTest < ActionController::TestCase
  setup do
    @jury_form = jury_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jury_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jury_form" do
    assert_difference('JuryForm.count') do
      post :create, jury_form: { applied_study_form_id: @jury_form.applied_study_form_id, comments: @jury_form.comments, criteria_id: @jury_form.criteria_id, final_assessment: @jury_form.final_assessment, judge_id: @jury_form.judge_id }
    end

    assert_redirected_to jury_form_path(assigns(:jury_form))
  end

  test "should show jury_form" do
    get :show, id: @jury_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jury_form
    assert_response :success
  end

  test "should update jury_form" do
    put :update, id: @jury_form, jury_form: { applied_study_form_id: @jury_form.applied_study_form_id, comments: @jury_form.comments, criteria_id: @jury_form.criteria_id, final_assessment: @jury_form.final_assessment, judge_id: @jury_form.judge_id }
    assert_redirected_to jury_form_path(assigns(:jury_form))
  end

  test "should destroy jury_form" do
    assert_difference('JuryForm.count', -1) do
      delete :destroy, id: @jury_form
    end

    assert_redirected_to jury_forms_path
  end
end
