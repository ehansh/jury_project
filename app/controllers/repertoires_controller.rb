class RepertoiresController < ApplicationController
  # GET /repertoires
  # GET /repertoires.json
  def index
    @repertoires = Repertoire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @repertoires }
    end
  end

  # GET /repertoires/1
  # GET /repertoires/1.json
  def show
    @repertoire = Repertoire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @repertoire }
    end
  end

  # GET /repertoires/new
  # GET /repertoires/new.json
  def new
    @repertoire = Repertoire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @repertoire }
    end
  end

  # GET /repertoires/1/edit
  def edit
    @repertoire = Repertoire.find(params[:id])
  end

  # POST /repertoires
  # POST /repertoires.json
  def create
    @repertoire = Repertoire.new(params[:repertoire])

    respond_to do |format|
      if @repertoire.save
        @student = Student.find(@repertoire.student_id)
        @student.repertoires << @repertoire

        format.html { redirect_to @student, notice: 'Repertoire was successfully created.' }
        format.json { render json: @student, status: :created, location: @repertoire }
      else
        format.html { render action: "new" }
        format.json { render json: @repertoire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /repertoires/1
  # PUT /repertoires/1.json
  def update
    @repertoire = Repertoire.find(params[:id])

    respond_to do |format|
      if @repertoire.update_attributes(params[:repertoire])
        format.html { redirect_to @repertoire, notice: 'Repertoire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @repertoire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repertoires/1
  # DELETE /repertoires/1.json
  def destroy
    @repertoire = Repertoire.find(params[:id])
    @student = Student.find(@repertoire.student_id)
    @repertoire.destroy

    respond_to do |format|
      format.html { redirect_to @student }
      format.json { head :no_content }
    end
  end
end
