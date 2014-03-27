class DoshaActionsController < ApplicationController
  before_action :set_dosha_action, only: [:show, :edit, :update, :destroy]

  # GET /dosha_actions
  # GET /dosha_actions.json
  def index
    @dosha_actions = DoshaAction.all
  end

  # GET /dosha_actions/1
  # GET /dosha_actions/1.json
  def show
  end

  # GET /dosha_actions/new
  def new
    @dosha_action = DoshaAction.new
  end

  # GET /dosha_actions/1/edit
  def edit
  end

  # POST /dosha_actions
  # POST /dosha_actions.json
  def create
    @dosha_action = DoshaAction.new(dosha_action_params)

    respond_to do |format|
      if @dosha_action.save
        format.html { redirect_to @dosha_action, notice: 'Dosha action was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dosha_action }
      else
        format.html { render action: 'new' }
        format.json { render json: @dosha_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dosha_actions/1
  # PATCH/PUT /dosha_actions/1.json
  def update
    respond_to do |format|
      if @dosha_action.update(dosha_action_params)
        format.html { redirect_to @dosha_action, notice: 'Dosha action was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dosha_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dosha_actions/1
  # DELETE /dosha_actions/1.json
  def destroy
    @dosha_action.destroy
    respond_to do |format|
      format.html { redirect_to dosha_actions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dosha_action
      @dosha_action = DoshaAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dosha_action_params
      params.require(:dosha_action).permit(:Dosha)
    end
end
