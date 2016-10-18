class UserController < ApplicationController
    before_action :set_usuario, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_usuario!

    def index
        @users = Usuario.all
    end

    def show
        @user = Usuario.find(params[:id])
    end

    def edit
    end

    def new
    end

    def create
    end

    def update
        respond_to do |format|
      if @user.update(vehicle_per_usuario_params)
        format.html { redirect_to @vehicle_per_usuario, notice: 'Vehicle per usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_per_usuario }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_per_usuario.errors, status: :unprocessable_entity }
      end
    end
    end


    def destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
        @user = Usuario.find(params[:id])
    end

    def user_params
        params.require(:usuario).permit(:email, :password, :password_confirmation, :rol, :current_password)
    end
end



