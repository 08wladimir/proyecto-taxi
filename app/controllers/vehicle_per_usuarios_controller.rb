class VehiclePerUsuariosController < ApplicationController
  before_action :set_vehicle_per_usuario, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_per_usuarios
  # GET /vehicle_per_usuarios.json
  def index
    @vehicle_per_usuarios = VehiclePerUsuario.all
  end

  # GET /vehicle_per_usuarios/1
  # GET /vehicle_per_usuarios/1.json
  def show
  end

  # GET /vehicle_per_usuarios/new
  def new
    @vehicle_per_usuario = VehiclePerUsuario.new
  end

  # GET /vehicle_per_usuarios/1/edit
  def edit
  end

  # POST /vehicle_per_usuarios
  # POST /vehicle_per_usuarios.json
  def create
    @vehicle_per_usuario = VehiclePerUsuario.new(vehicle_per_usuario_params)

    respond_to do |format|
      if @vehicle_per_usuario.save
        format.html { redirect_to profile_index_path, notice: 'Vehicle per usuario was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_per_usuario }
      else
        format.html { render :new }
        format.json { render json: @vehicle_per_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_per_usuarios/1
  # PATCH/PUT /vehicle_per_usuarios/1.json
  def update
    respond_to do |format|
      if @vehicle_per_usuario.update(vehicle_per_usuario_params)
        format.html { redirect_to @vehicle_per_usuario, notice: 'Vehicle per usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_per_usuario }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_per_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_per_usuarios/1
  # DELETE /vehicle_per_usuarios/1.json
  def destroy
    @vehicle_per_usuario.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_per_usuarios_url, notice: 'Vehicle per usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_per_usuario
      @vehicle_per_usuario = VehiclePerUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_per_usuario_params
      params.require(:vehicle_per_usuario).permit(:vehicule_id, :usuario_id, :insurance, :propertyCard, :supportToDisable, :certificategases, :colorVehicle, :plateVehicle)
    end
end
