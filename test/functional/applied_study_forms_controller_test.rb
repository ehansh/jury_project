require 'test_helper'

class AppliedStudyFormsControllerTest < ActionController::TestCase
  setup do
    @applied_study_form = applied_study_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applied_study_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applied_study_form" do
    assert_difference('AppliedStudyForm.count') do
      post :create, applied_study_form: { public_performances: @applied_study_form.public_performances, repertoire_id: @applied_study_form.repertoire_id, student_id: @applied_study_form.student_id, studies_and_scales: @applied_study_form.studies_and_scales }
    end

    assert_redirected_to applied_study_form_path(assigns(:applied_study_form))
  end

  test "should show applied_study_form" do
    get :show, id: @applied_study_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applied_study_form
    assert_response :success
  end

  test "should update applied_study_form" do
    put :update, id: @applied_study_form, applied_study_form: { public_performances: @applied_study_form.public_performances, repertoire_id: @applied_study_form.repertoire_id, student_id: @applied_study_form.student_id, studies_and_scales: @applied_study_form.studies_and_scales }
    assert_redirected_to applied_study_form_path(assigns(:applied_study_form))
  end

  test "should destroy applied_study_form" do
    assert_difference('AppliedStudyForm.count', -1) do
      delete :destroy, id: @applied_study_form
    end

    assert_redirected_to applied_study_forms_path
  end
end
