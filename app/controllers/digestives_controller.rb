class DigestivesController < ApplicationController
  before_action :set_digestive, only: [:show, :edit, :update, :destroy]

  # GET /digestives
  # GET /digestives.json
  def index
    @digestives = Digestive.all
  end

  # GET /digestives/1
  # GET /digestives/1.json
  def show
  end

  # GET /digestives/new
  def new
    @digestive = Digestive.new
  end

  # GET /digestives/1/edit
  def edit
  end

  # POST /digestives
  # POST /digestives.json
  def create
    @digestive = Digestive.new(digestive_params)

    respond_to do |format|
      if @digestive.save
        format.html { redirect_to @digestive, notice: 'Digestive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @digestive }
      else
        format.html { render action: 'new' }
        format.json { render json: @digestive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /digestives/1
  # PATCH/PUT /digestives/1.json
  def update
    respond_to do |format|
      if @digestive.update(digestive_params)
        format.html { redirect_to @digestive, notice: 'Digestive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @digestive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digestives/1
  # DELETE /digestives/1.json
  def destroy
    @digestive.destroy
    respond_to do |format|
      format.html { redirect_to digestives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_digestive
      @digestive = Digestive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def digestive_params
      params.require(:digestive).permit(:ingredient_id, :flavor_id)
    end
end
