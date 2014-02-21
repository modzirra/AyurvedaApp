class AilmentsController < ApplicationController
  before_action :set_ailment, only: [:show, :edit, :update, :destroy]

  # GET /ailments
  # GET /ailments.json
  def index
    @ailments = Ailment.all
  end

  # GET /ailments/1
  # GET /ailments/1.json
  def show
  end

  # GET /ailments/new
  def new
    @ailment = Ailment.new
  end

  # GET /ailments/1/edit
  def edit
  end

  # POST /ailments
  # POST /ailments.json
  def create
    @ailment = Ailment.new(ailment_params)

    respond_to do |format|
      if @ailment.save
        format.html { redirect_to @ailment, notice: 'Ailment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ailment }
      else
        format.html { render action: 'new' }
        format.json { render json: @ailment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ailments/1
  # PATCH/PUT /ailments/1.json
  def update
    respond_to do |format|
      if @ailment.update(ailment_params)
        format.html { redirect_to @ailment, notice: 'Ailment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ailment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ailments/1
  # DELETE /ailments/1.json
  def destroy
    @ailment.destroy
    respond_to do |format|
      format.html { redirect_to ailments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ailment
      @ailment = Ailment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ailment_params
      params.require(:ailment).permit(:Name, :Remedy)
    end
end
