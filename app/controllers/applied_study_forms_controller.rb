class AppliedStudyFormsController < ApplicationController
  # GET /applied_study_forms
  # GET /applied_study_forms.json
  def index
    @applied_study_forms = AppliedStudyForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applied_study_forms }
    end
  end

  # GET /applied_study_forms/1
  # GET /applied_study_forms/1.json
  def show
    @applied_study_form = AppliedStudyForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @applied_study_form }
    end
  end

  # GET /applied_study_forms/new
  # GET /applied_study_forms/new.json
  def new
    @applied_study_form = AppliedStudyForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @applied_study_form }
    end
  end

  # GET /applied_study_forms/1/edit
  def edit
    @applied_study_form = AppliedStudyForm.find(params[:id])
  end

  # POST /applied_study_forms
  # POST /applied_study_forms.json
  def create
    @applied_study_form = AppliedStudyForm.new(params[:applied_study_form])

    respond_to do |format|
      if @applied_study_form.save
        format.html { redirect_to @applied_study_form, notice: 'Applied study form was successfully created.' }
        format.json { render json: @applied_study_form, status: :created, location: @applied_study_form }
      else
        format.html { render action: "new" }
        format.json { render json: @applied_study_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applied_study_forms/1
  # PUT /applied_study_forms/1.json
  def update
    @applied_study_form = AppliedStudyForm.find(params[:id])

    respond_to do |format|
      if @applied_study_form.update_attributes(params[:applied_study_form])
        format.html { redirect_to @applied_study_form, notice: 'Applied study form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @applied_study_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applied_study_forms/1
  # DELETE /applied_study_forms/1.json
  def destroy
    @applied_study_form = AppliedStudyForm.find(params[:id])
    @applied_study_form.destroy

    respond_to do |format|
      format.html { redirect_to applied_study_forms_url }
      format.json { head :no_content }
    end
  end
end
