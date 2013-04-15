class MeasureGroupsController < ApplicationController
  # GET /measure_groups
  # GET /measure_groups.json
  def index
    @measure_groups = MeasureGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @measure_groups }
    end
  end

  # GET /measure_groups/1
  # GET /measure_groups/1.json
  def show
    @measure_group = MeasureGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @measure_group }
    end
  end

  # GET /measure_groups/new
  # GET /measure_groups/new.json
  def new
    @measure_group = MeasureGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @measure_group }
    end
  end

  # GET /measure_groups/1/edit
  def edit
    @measure_group = MeasureGroup.find(params[:id])
  end

  # POST /measure_groups
  # POST /measure_groups.json
  def create
    @measure_group = MeasureGroup.new(params[:measure_group])

    respond_to do |format|
      if @measure_group.save
        format.html { redirect_to @measure_group, notice: 'Measure group was successfully created.' }
        format.json { render json: @measure_group, status: :created, location: @measure_group }
      else
        format.html { render action: "new" }
        format.json { render json: @measure_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /measure_groups/1
  # PUT /measure_groups/1.json
  def update
    @measure_group = MeasureGroup.find(params[:id])

    respond_to do |format|
      if @measure_group.update_attributes(params[:measure_group])
        format.html { redirect_to @measure_group, notice: 'Measure group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @measure_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measure_groups/1
  # DELETE /measure_groups/1.json
  def destroy
    @measure_group = MeasureGroup.find(params[:id])
    @measure_group.destroy

    respond_to do |format|
      format.html { redirect_to measure_groups_url }
      format.json { head :no_content }
    end
  end
end
