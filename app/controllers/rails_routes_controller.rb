class RailsRoutesController < ApplicationController
  before_action :set_rails_route, only: [:show, :edit, :update, :destroy]

  # GET /rails_routes
  # GET /rails_routes.json
  def index
    @rails_routes = RailsRoute.all
  end

  # GET /rails_routes/1
  # GET /rails_routes/1.json
  def show
  end

  # GET /rails_routes/new
  def new
    @rails_route = RailsRoute.new
  end

  # GET /rails_routes/1/edit
  def edit
  end

  # POST /rails_routes
  # POST /rails_routes.json
  def create
    @rails_route = RailsRoute.new(rails_route_params)

    respond_to do |format|
      if @rails_route.save
        format.html { redirect_to @rails_route, notice: 'Rails route was successfully created.' }
        format.json { render :show, status: :created, location: @rails_route }
      else
        format.html { render :new }
        format.json { render json: @rails_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rails_routes/1
  # PATCH/PUT /rails_routes/1.json
  def update
    respond_to do |format|
      if @rails_route.update(rails_route_params)
        format.html { redirect_to @rails_route, notice: 'Rails route was successfully updated.' }
        format.json { render :show, status: :ok, location: @rails_route }
      else
        format.html { render :edit }
        format.json { render json: @rails_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rails_routes/1
  # DELETE /rails_routes/1.json
  def destroy
    @rails_route.destroy
    respond_to do |format|
      format.html { redirect_to rails_routes_url, notice: 'Rails route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rails_route
      @rails_route = RailsRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rails_route_params
      params.require(:rails_route).permit(:routename, :origin, :destination, :price)
    end
end
