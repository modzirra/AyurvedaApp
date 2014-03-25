class TemperaturesController < ApplicationController
  before_action :set_temperature, only: [:show]

  # GET /temperatures
  # GET /temperatures.json
  def index
    @temperatures = Temperature.all
  end

  # GET /temperatures/1
  # GET /temperatures/1.json
  def show
  end

  # GET /temperatures/new
  def new
  end

  # GET /temperatures/1/edit
  def edit
  end

  # POST /temperatures
  # POST /temperatures.json
  def create
  end

  # PATCH/PUT /temperatures/1
  # PATCH/PUT /temperatures/1.json
  def update
  end

  # DELETE /temperatures/1
  # DELETE /temperatures/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temperature
      @temperature = Temperature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temperature_params
      params.require(:temperature).permit(:Type)
    end
end
