class TexiRoutesController < ApplicationController
  before_action :set_texi_route, only: [:show, :edit, :update, :destroy]

  # GET /texi_routes
  # GET /texi_routes.json
  def index
    @texi_routes = TexiRoute.all
  end

  # GET /texi_routes/1
  # GET /texi_routes/1.json
  def show
  end

  # GET /texi_routes/new
  def new
    @texi_route = TexiRoute.new
  end

  # GET /texi_routes/1/edit
  def edit
  end

  # POST /texi_routes
  # POST /texi_routes.json
  def create
    @texi_route = TexiRoute.new(texi_route_params)

    respond_to do |format|
      if @texi_route.save
        format.html { redirect_to @texi_route, notice: 'Texi route was successfully created.' }
        format.json { render :show, status: :created, location: @texi_route }
      else
        format.html { render :new }
        format.json { render json: @texi_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /texi_routes/1
  # PATCH/PUT /texi_routes/1.json
  def update
    respond_to do |format|
      if @texi_route.update(texi_route_params)
        format.html { redirect_to @texi_route, notice: 'Texi route was successfully updated.' }
        format.json { render :show, status: :ok, location: @texi_route }
      else
        format.html { render :edit }
        format.json { render json: @texi_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /texi_routes/1
  # DELETE /texi_routes/1.json
  def destroy
    @texi_route.destroy
    respond_to do |format|
      format.html { redirect_to texi_routes_url, notice: 'Texi route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_texi_route
      @texi_route = TexiRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def texi_route_params
      params.require(:texi_route).permit(:routename, :origin, :destination, :distance, :basicCharge)
    end
end
