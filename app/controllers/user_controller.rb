class UserController < ApplicationController
    before_action :authenticate_usuario!

    def index
        @users = Usuario.paginate(:page => params[:page], per_page: 10)
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



