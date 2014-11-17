class OutsourcesController < ApplicationController
  # GET /outsources
  # GET /outsources.json
  def index
    

    @search = Outsource.search(params[:q])
    @outsources = @search.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outsources }
    end
  end

  # GET /outsources/1
  # GET /outsources/1.json
  def show
    @outsource = Outsource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outsource }
    end
  end

  # GET /outsources/new
  # GET /outsources/new.json
  def new
    @outsource = Outsource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outsource }
    end
  end

  # GET /outsources/1/edit
  def edit
    @outsource = Outsource.find(params[:id])
  end

  # POST /outsources
  # POST /outsources.json
  def create
    @outsource = Outsource.new(params[:outsource])

    respond_to do |format|
      if @outsource.save
        format.html { redirect_to @outsource, notice: 'Outsource was successfully created.' }
        format.json { render json: @outsource, status: :created, location: @outsource }
      else
        format.html { render action: "new" }
        format.json { render json: @outsource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outsources/1
  # PUT /outsources/1.json
  def update
    @outsource = Outsource.find(params[:id])

    respond_to do |format|
      if @outsource.update_attributes(params[:outsource])
        format.html { redirect_to @outsource, notice: 'Outsource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @outsource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outsources/1
  # DELETE /outsources/1.json
  def destroy
    @outsource = Outsource.find(params[:id])
    @outsource.destroy

    respond_to do |format|
      format.html { redirect_to outsources_url }
      format.json { head :no_content }
    end
  end
end
