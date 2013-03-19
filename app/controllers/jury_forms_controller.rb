class JuryFormsController < ApplicationController
  # GET /jury_forms
  # GET /jury_forms.json
  def index
    @jury_forms = JuryForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jury_forms }
    end
  end

  # GET /jury_forms/1
  # GET /jury_forms/1.json
  def show
    @jury_form = JuryForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jury_form }
    end
  end

  # GET /jury_forms/new
  # GET /jury_forms/new.json
  def new
    @jury_form = JuryForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jury_form }
    end
  end

  # GET /jury_forms/1/edit
  def edit
    @jury_form = JuryForm.find(params[:id])
  end

  # POST /jury_forms
  # POST /jury_forms.json
  def create
    @jury_form = JuryForm.new(params[:jury_form])

    respond_to do |format|
      if @jury_form.save
        format.html { redirect_to @jury_form, notice: 'Jury form was successfully created.' }
        format.json { render json: @jury_form, status: :created, location: @jury_form }
      else
        format.html { render action: "new" }
        format.json { render json: @jury_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jury_forms/1
  # PUT /jury_forms/1.json
  def update
    @jury_form = JuryForm.find(params[:id])

    respond_to do |format|
      if @jury_form.update_attributes(params[:jury_form])
        format.html { redirect_to @jury_form, notice: 'Jury form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jury_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jury_forms/1
  # DELETE /jury_forms/1.json
  def destroy
    @jury_form = JuryForm.find(params[:id])
    @jury_form.destroy

    respond_to do |format|
      format.html { redirect_to jury_forms_url }
      format.json { head :no_content }
    end
  end
end
