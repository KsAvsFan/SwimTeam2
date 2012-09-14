class SwimmersController < ApplicationController
  # GET /swimmers
  # GET /swimmers.json
  def index
  params[:filter] ? @swimmers = Swimmer.where("family_id = ?", params[:filter]) : @swimmers = Swimmer.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @swimmers }
    end
  end

  # GET /swimmers/1
  # GET /swimmers/1.json
  def show
    @swimmer = Swimmer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @swimmer }
    end
  end

  # GET /swimmers/new
  # GET /swimmers/new.json
  def new
    @swimmer = Swimmer.new
    @swimmer.family_id = params[:family]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @swimmer }
    end
  end

  # GET /swimmers/1/edit
  def edit
    @swimmer = Swimmer.find(params[:id])
  end

  # POST /swimmers
  # POST /swimmers.json
  def create
    @swimmer = Swimmer.new(params[:swimmer])

    respond_to do |format|
      if @swimmer.save
        format.html { redirect_to @swimmer, notice: 'Swimmer was successfully created.' }
        format.json { render json: @swimmer, status: :created, location: @swimmer }
      else
        format.html { render action: "new" }
        format.json { render json: @swimmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /swimmers/1
  # PUT /swimmers/1.json
  def update
    @swimmer = Swimmer.find(params[:id])

    respond_to do |format|
      if @swimmer.update_attributes(params[:swimmer])
        format.html { redirect_to @swimmer, notice: 'Swimmer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @swimmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swimmers/1
  # DELETE /swimmers/1.json
  def destroy
    @swimmer = Swimmer.find(params[:id])
    @swimmer.destroy

    respond_to do |format|
      format.html { redirect_to swimmers_url }
      format.json { head :no_content }
    end
  end
end
