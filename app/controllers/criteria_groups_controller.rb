class CriteriaGroupsController < ApplicationController
  # GET /criteria_groups
  # GET /criteria_groups.json
  def index
    @criteria_groups = CriteriaGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @criteria_groups }
    end
  end

  # GET /criteria_groups/1
  # GET /criteria_groups/1.json
  def show
    @criteria_group = CriteriaGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @criteria_group }
    end
  end

  # GET /criteria_groups/new
  # GET /criteria_groups/new.json
  def new
    @criteria_group = CriteriaGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @criteria_group }
    end
  end

  # GET /criteria_groups/1/edit
  def edit
    @criteria_group = CriteriaGroup.find(params[:id])
  end

  # POST /criteria_groups
  # POST /criteria_groups.json
  def create
    @criteria_group = CriteriaGroup.new(params[:criteria_group])

    respond_to do |format|
      if @criteria_group.save
        format.html { redirect_to @criteria_group, notice: 'criteria group was successfully created.' }
        format.json { render json: @criteria_group, status: :created, location: @criteria_group }
      else
        format.html { render action: "new" }
        format.json { render json: @criteria_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /criteria_groups/1
  # PUT /criteria_groups/1.json
  def update
    @criteria_group = CriteriaGroup.find(params[:id])

    respond_to do |format|
      if @criteria_group.update_attributes(params[:criteria_group])
        format.html { redirect_to @criteria_group, notice: 'criteria group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @criteria_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criteria_groups/1
  # DELETE /criteria_groups/1.json
  def destroy
    @criteria_group = CriteriaGroup.find(params[:id])
    @criteria_group.destroy

    respond_to do |format|
      format.html { redirect_to criteria_groups_url }
      format.json { head :no_content }
    end
  end
end
