class FamilystructuresController < ApplicationController
  # GET /familystructures
  # GET /familystructures.json
  def index
    @familystructures = Familystructure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @familystructures }
    end
  end

  # GET /familystructures/1
  # GET /familystructures/1.json
  def show
    @familystructure = Familystructure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @familystructure }
    end
  end

  # GET /familystructures/new
  # GET /familystructures/new.json
  def new
    @familystructure = Familystructure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @familystructure }
    end
  end

  # GET /familystructures/1/edit
  def edit
    @familystructure = Familystructure.find(params[:id])
  end

  # POST /familystructures
  # POST /familystructures.json
  def create
    @familystructure = Familystructure.new(params[:familystructure])

    respond_to do |format|
      if @familystructure.save
        format.html { redirect_to @familystructure, notice: 'Familystructure was successfully created.' }
        format.json { render json: @familystructure, status: :created, location: @familystructure }
      else
        format.html { render action: "new" }
        format.json { render json: @familystructure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /familystructures/1
  # PUT /familystructures/1.json
  def update
    @familystructure = Familystructure.find(params[:id])

    respond_to do |format|
      if @familystructure.update_attributes(params[:familystructure])
        format.html { redirect_to @familystructure, notice: 'Familystructure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @familystructure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familystructures/1
  # DELETE /familystructures/1.json
  def destroy
    @familystructure = Familystructure.find(params[:id])
    @familystructure.destroy

    respond_to do |format|
      format.html { redirect_to familystructures_url }
      format.json { head :no_content }
    end
  end
end
