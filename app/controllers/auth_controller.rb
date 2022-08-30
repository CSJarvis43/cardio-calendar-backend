class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :auto_login]

    SECRET_KEY = ENV["SECRET_KEY"]

    def create
        @user = User.find_by(username: login_params[:username])

        if @user && @user.authenticate(login_params[:password])
            @token = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
        else
            render json: { message: "Invalid username/password" }, status: :unauthorized
        end
    end

    def auto_login
        @token = params[:jwt]
        user = User.find(JWT.decode(@token, SECRET_KEY)[0]["user_id"])
        render json: user
    end


    private 

    def login_params
        params.require(:user).permit(:username, :password)
    end
end
