class GeneralsController < ApplicationController  
  
  before_filter :authenticate_user!,  :user_signed_in?

  def index
    @generals = General.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @generals }
    end
  end

  def show
    @general = General.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @general }
    end
  end

  def new
    @general = General.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @general }
    end
  end

  def edit
    @general = General.find(params[:id])
  end

  def create
    @general = General.new(params[:general])

    respond_to do |format|
      if @general.save
        format.html { redirect_to @general, notice: 'General was successfully created.' }
        format.json { render json: @general, status: :created, location: @general }
      else
        format.html { render action: "new" }
        format.json { render json: @general.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @general = General.find(params[:id])

    respond_to do |format|
      if @general.update_attributes(params[:general])
        format.html { redirect_to @general, notice: 'General was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @general.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @general = General.find(params[:id])
    @general.destroy

    respond_to do |format|
      format.html { redirect_to generals_url }
      format.json { head :no_content }
    end
  end
end
