class JuriesController < ApplicationController
  # GET /juries
  # GET /juries.json
  def index
    @juries = Jury.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @juries }
    end
  end

  # GET /juries/1
  # GET /juries/1.json
  def show
    @jury = Jury.find(params[:id])

    if @jury.jury_form_id.nil?
      @jury_form = JuryForm.new(judge_id: @jury.judge_id)
    else
      @jury_form = JuryForm.find(@jury.jury_form_id)
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jury }
    end
  end

  # GET /juries/new
  # GET /juries/new.json
  def new
    @jury = Jury.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jury }
    end
  end

  # GET /juries/1/edit
  def edit
    @jury = Jury.find(params[:id])
  end

  # POST /juries
  # POST /juries.json
  def create
    @jury = Jury.new(params[:jury])

    respond_to do |format|
      if @jury.save
        #save the student/criteria group
        student = Student.find(@jury.student_id)
        @jury.student = student

        judge = Judge.find(@jury.judge_id)
        @jury.judge << judge

        measure_group = MeasureGroup.find(@jury.measure_group_id)
        @jury.measure_group = measure_group

        format.html { redirect_to @jury, notice: 'Jury was successfully created.' }
        format.json { render json: @jury, status: :created, location: @jury }
      else
        format.html { render action: "new" }
        format.json { render json: @jury.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /juries/1
  # PUT /juries/1.json
  def update
    @jury = Jury.find(params[:id])

    respond_to do |format|
      if @jury.update_attributes(params[:jury])
        format.html { redirect_to @jury, notice: 'Jury was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jury.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juries/1
  # DELETE /juries/1.json
  def destroy
    @jury = Jury.find(params[:id])
    @jury.destroy

    respond_to do |format|
      format.html { redirect_to juries_url }
      format.json { head :no_content }
    end
  end
end
