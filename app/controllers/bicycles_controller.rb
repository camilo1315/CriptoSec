class BicyclesController < ApplicationController
  before_action :set_bicycle, only: [:show, :update, :destroy]

  # GET /bicycles
  def index
    @bicycles = Bicycle.paginate(:page => params[:page], :per_page => 10)
    render json: @bicycles, each_serializer: BicycleSerializer
  end

  # GET /bicycles/1
  def show
    render json: @bicycle, serializer: BicycleSerializer
  end

  # POST /bicycles
  def create
    @bicycle = Bicycle.new(bicycle_params)

    if @bicycle.save
      render json: @bicycle, status: :created, location: @bicycle
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bicycles/1
  def update
    if @bicycle.update(bicycle_params)
      render json: @bicycle
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bicycles/1
  def destroy
    @bicycle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicycle
      @bicycle = Bicycle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bicycle_params
      params.require(:bicycle).permit(:id_bicy, :brand_bicy, :material_bicy, :components_bicy, :price_bicy, :usetype_bicy, :description_bicy, :store_id)
    end
end
