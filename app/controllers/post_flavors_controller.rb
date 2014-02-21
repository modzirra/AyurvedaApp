class PostFlavorsController < ApplicationController
  before_action :set_post_flavor, only: [:show, :edit, :update, :destroy]

  # GET /post_flavors
  # GET /post_flavors.json
  def index
    @post_flavors = PostFlavor.all
  end

  # GET /post_flavors/1
  # GET /post_flavors/1.json
  def show
  end

  # GET /post_flavors/new
  def new
    @post_flavor = PostFlavor.new
  end

  # GET /post_flavors/1/edit
  def edit
  end

  # POST /post_flavors
  # POST /post_flavors.json
  def create
    @post_flavor = PostFlavor.new(post_flavor_params)

    respond_to do |format|
      if @post_flavor.save
        format.html { redirect_to @post_flavor, notice: 'Post flavor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post_flavor }
      else
        format.html { render action: 'new' }
        format.json { render json: @post_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_flavors/1
  # PATCH/PUT /post_flavors/1.json
  def update
    respond_to do |format|
      if @post_flavor.update(post_flavor_params)
        format.html { redirect_to @post_flavor, notice: 'Post flavor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_flavors/1
  # DELETE /post_flavors/1.json
  def destroy
    @post_flavor.destroy
    respond_to do |format|
      format.html { redirect_to post_flavors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_flavor
      @post_flavor = PostFlavor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_flavor_params
      params.require(:post_flavor).permit(:Name)
    end
end
