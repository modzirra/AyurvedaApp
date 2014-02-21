class PreFlavorsController < ApplicationController
  before_action :set_pre_flavor, only: [:show, :edit, :update, :destroy]

  # GET /pre_flavors
  # GET /pre_flavors.json
  def index
    @pre_flavors = PreFlavor.all
  end

  # GET /pre_flavors/1
  # GET /pre_flavors/1.json
  def show
  end

  # GET /pre_flavors/new
  def new
    @pre_flavor = PreFlavor.new
  end

  # GET /pre_flavors/1/edit
  def edit
  end

  # POST /pre_flavors
  # POST /pre_flavors.json
  def create
    @pre_flavor = PreFlavor.new(pre_flavor_params)

    respond_to do |format|
      if @pre_flavor.save
        format.html { redirect_to @pre_flavor, notice: 'Pre flavor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pre_flavor }
      else
        format.html { render action: 'new' }
        format.json { render json: @pre_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_flavors/1
  # PATCH/PUT /pre_flavors/1.json
  def update
    respond_to do |format|
      if @pre_flavor.update(pre_flavor_params)
        format.html { redirect_to @pre_flavor, notice: 'Pre flavor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pre_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_flavors/1
  # DELETE /pre_flavors/1.json
  def destroy
    @pre_flavor.destroy
    respond_to do |format|
      format.html { redirect_to pre_flavors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_flavor
      @pre_flavor = PreFlavor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_flavor_params
      params.require(:pre_flavor).permit(:Name)
    end
end
