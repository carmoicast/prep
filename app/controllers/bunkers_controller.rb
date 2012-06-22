class BunkersController < ApplicationController
  # GET /bunkers
  # GET /bunkers.json
  def index
    @bunkers = Bunker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bunkers }
    end
  end

  # GET /bunkers/1
  # GET /bunkers/1.json
  def show
    @bunker = Bunker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bunker }
    end
  end

  # GET /bunkers/new
  # GET /bunkers/new.json
  def new
    @bunker = Bunker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bunker }
    end
  end

  # GET /bunkers/1/edit
  def edit
    @bunker = Bunker.find(params[:id])
  end

  # POST /bunkers
  # POST /bunkers.json
  def create
    @bunker = Bunker.new(params[:bunker])

    respond_to do |format|
      if @bunker.save
        format.html { redirect_to @bunker, notice: 'Bunker was successfully created.' }
        format.json { render json: @bunker, status: :created, location: @bunker }
      else
        format.html { render action: "new" }
        format.json { render json: @bunker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bunkers/1
  # PUT /bunkers/1.json
  def update
    @bunker = Bunker.find(params[:id])

    respond_to do |format|
      if @bunker.update_attributes(params[:bunker])
        format.html { redirect_to @bunker, notice: 'Bunker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bunker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bunkers/1
  # DELETE /bunkers/1.json
  def destroy
    @bunker = Bunker.find(params[:id])
    @bunker.destroy

    respond_to do |format|
      format.html { redirect_to bunkers_url }
      format.json { head :no_content }
    end
  end
end
