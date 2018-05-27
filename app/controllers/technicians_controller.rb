class TechniciansController < ApplicationController
  before_action :set_technician, only: [:show, :update, :destroy]

  # GET /technicians
  def index
    @technicians = Technician.paginate(:page => params[:page], :per_page => 10)

    render json: @technicians
  end

  # GET /technicians/1
  def show
    render json: @technician
  end

  # POST /technicians
  def create
    @technician = Technician.new(technician_params)

    if @technician.save
      render json: @technician, status: :created
    else
      render json: @technician.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /technicians/1
  def update
    if @technician.update(technician_params)
      render json: @technician
    else
      render json: @technician.errors, status: :unprocessable_entity
    end
  end

  # DELETE /technicians/1
  def destroy
    @technician.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technician
      @technician = Technician.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def technician_params
      params.require(:technician).permit(:email, :password, :id_technical, :NameTec, :SurnameTec, :typeworktec, :costhourtec, :phonenumtec)
    end
end
