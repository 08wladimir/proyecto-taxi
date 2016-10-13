class ReferencesVehicleDriversController < ApplicationController
  before_action :set_references_vehicle_driver, only: [:show, :edit, :update, :destroy]

  # GET /references_vehicle_drivers
  # GET /references_vehicle_drivers.json
  def index
    @references_vehicle_drivers = ReferencesVehicleDriver.paginate(:page => params[:page], per_page: 10)
  end

  # GET /references_vehicle_drivers/1
  # GET /references_vehicle_drivers/1.json
  def show
  end

  # GET /references_vehicle_drivers/new
  def new
    @references_vehicle_driver = ReferencesVehicleDriver.new
  end

  # GET /references_vehicle_drivers/1/edit
  def edit
  end

  # POST /references_vehicle_drivers
  # POST /references_vehicle_drivers.json
  def create
    @references_vehicle_driver = ReferencesVehicleDriver.new(references_vehicle_driver_params)

    respond_to do |format|
      if @references_vehicle_driver.save
        @dato = ReferencesVehicleDriver.last
        @dato.token = @dato.driver_id.to_s + @dato.VehiclePerUsuario_id.to_s + @dato.driver.identityCard.to_s
        @dato.save
        format.html { redirect_to profile_index_path, notice: 'References vehicle driver was successfully created.' }
        format.json { render :show, status: :created, location: @references_vehicle_driver }
      else
        format.html { render :new }
        format.json { render json: @references_vehicle_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /references_vehicle_drivers/1
  # PATCH/PUT /references_vehicle_drivers/1.json
  def update
    respond_to do |format|
      if @references_vehicle_driver.update(references_vehicle_driver_params)
        format.html { redirect_to @references_vehicle_driver, notice: 'References vehicle driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @references_vehicle_driver }
      else
        format.html { render :edit }
        format.json { render json: @references_vehicle_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /references_vehicle_drivers/1
  # DELETE /references_vehicle_drivers/1.json
  def destroy
    @references_vehicle_driver.destroy
    respond_to do |format|
      format.html { redirect_to references_vehicle_drivers_url, notice: 'References vehicle driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_references_vehicle_driver
      @references_vehicle_driver = ReferencesVehicleDriver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def references_vehicle_driver_params
      params.require(:references_vehicle_driver).permit(:driver_id, :usuario_id, :VehiclePerUsuario_id, :fechaInicio, :fechaFin, :commission, :token, :description)
    end
end
