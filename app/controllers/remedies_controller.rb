class RemediesController < ApplicationController
  before_action :set_remedy, only: [:show, :edit, :update, :destroy]

  # GET /remedies
  # GET /remedies.json
  def index
    @remedies = Remedy.all
  end

  # GET /remedies/1
  # GET /remedies/1.json
  def show
  end

  # GET /remedies/new
  def new
    @remedy = Remedy.new
  end

  # GET /remedies/1/edit
  def edit
  end

  # POST /remedies
  # POST /remedies.json
  def create
    @remedy = Remedy.new(remedy_params)

    respond_to do |format|
      if @remedy.save
        format.html { redirect_to @remedy, notice: 'Remedy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @remedy }
      else
        format.html { render action: 'new' }
        format.json { render json: @remedy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remedies/1
  # PATCH/PUT /remedies/1.json
  def update
    respond_to do |format|
      if @remedy.update(remedy_params)
        format.html { redirect_to @remedy, notice: 'Remedy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @remedy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remedies/1
  # DELETE /remedies/1.json
  def destroy
    @remedy.destroy
    respond_to do |format|
      format.html { redirect_to remedies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remedy
      @remedy = Remedy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def remedy_params
      params.require(:remedy).permit(:ailment, :cure)
    end
end
