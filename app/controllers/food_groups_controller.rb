class FoodGroupsController < ApplicationController
  before_action :set_food_group, only: [:show, :edit, :update, :destroy]

  # GET /food_groups
  # GET /food_groups.json
  def index
    @food_groups = FoodGroup.all
  end

  # GET /food_groups/1
  # GET /food_groups/1.json
  def show
  end

  # GET /food_groups/new
  def new
    @food_group = FoodGroup.new
  end

  # GET /food_groups/1/edit
  def edit
  end

  # POST /food_groups
  # POST /food_groups.json
  def create
    @food_group = FoodGroup.new(food_group_params)

    respond_to do |format|
      if @food_group.save
        format.html { redirect_to @food_group, notice: 'Food group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @food_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_groups/1
  # PATCH/PUT /food_groups/1.json
  def update
    respond_to do |format|
      if @food_group.update(food_group_params)
        format.html { redirect_to @food_group, notice: 'Food group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @food_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_groups/1
  # DELETE /food_groups/1.json
  def destroy
    @food_group.destroy
    respond_to do |format|
      format.html { redirect_to food_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_group
      @food_group = FoodGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_group_params
      params.require(:food_group).permit(:Name)
    end
end
