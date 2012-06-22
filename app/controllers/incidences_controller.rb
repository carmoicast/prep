class IncidencesController < ApplicationController
  # GET /incidences
  # GET /incidences.json
  def index
    @incidences = Incidence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @incidences }
    end
  end

  # GET /incidences/1
  # GET /incidences/1.json
  def show
    @incidence = Incidence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @incidence }
    end
  end

  # GET /incidences/new
  # GET /incidences/new.json
  def new
    @incidence = Incidence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @incidence }
    end
  end

  # GET /incidences/1/edit
  def edit
    @incidence = Incidence.find(params[:id])
  end

  # POST /incidences
  # POST /incidences.json
  def create
    @incidence = Incidence.new(params[:incidence])

    respond_to do |format|
      if @incidence.save
        format.html { redirect_to boxes_path, notice: 'Incidencia creada correctamente' }
        
        format.json { render json: @incidence, status: :created, location: @incidence }
      else
        format.html { render action: "new" }
        format.json { render json: @incidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /incidences/1
  # PUT /incidences/1.json
  def update
    @incidence = Incidence.find(params[:id])

    respond_to do |format|
      if @incidence.update_attributes(params[:incidence])
        format.html { redirect_to @incidence, notice: 'Incidence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @incidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidences/1
  # DELETE /incidences/1.json
  def destroy
    @incidence = Incidence.find(params[:id])
    @incidence.destroy

    respond_to do |format|
      format.html { redirect_to incidences_url }
      format.json { head :no_content }
    end
  end
end
