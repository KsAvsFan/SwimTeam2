class SplitsController < ApplicationController
  load_and_authorize_resource
  # GET /splits
  # GET /splits.json
  def index
    params[:filter] ? @splits = Split.where("swimmer_id = ?", params[:filter]) : @splits = Split.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @splits }
    end
  end

  # GET /splits/1
  # GET /splits/1.json
  def show
    @split = Split.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @split }
    end
  end

  # GET /splits/new
  # GET /splits/new.json
  def new
    @split = Split.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @split }
    end
  end

  # GET /splits/1/edit
  def edit
    @split = Split.find(params[:id])
  end

  # POST /splits
  # POST /splits.json
  def create
    @split = Split.new(params[:split])
    @split.distance = Event.find_by_name(@split.stroke).distance

    respond_to do |format|
      if @split.save
        format.html { redirect_to splits_url, notice: 'Split was successfully created.' }
        format.json { render json: @split, status: :created, location: @split }
      else
        format.html { render action: "new" }
        format.json { render json: @split.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /splits/1
  # PUT /splits/1.json
  def update
    @split = Split.find(params[:id])
    @split.distance = Event.find_by_name(@split.stroke).distance
    
    respond_to do |format|
      if @split.update_attributes(params[:split])
        format.html { redirect_to splits_url, notice: 'Split was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @split.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /splits/1
  # DELETE /splits/1.json
  def destroy
    @split = Split.find(params[:id])
    @split.destroy

    respond_to do |format|
      format.html { redirect_to splits_url }
      format.json { head :no_content }
    end
  end
end
