class UsersController < ApplicationController

    def index
        @users = User.all

        render json: @users
    end
    def show
        set_user
        render json: @user
    end

    def login
        @user = User.find_by(email: user_params[:email])

        if @user && @user.authenticate(user_params[:password])
            render json: @user
        else
            render json: { errors: ["Incorrect username or password"] }, status: :unauthorized
        end
    end

    def create
        @user = User.new(user_params)

        if @user.save
            login!
            render json: {
                status: :created,
                user: @user
        }
        else
            render json: { 
                status: 500,
                errors: @user.errors.full_messages 
            }
        end
    end

    def update
        set_user

        if @user.update(user_params)
            render json: @user
        else
            render json: { errors: @user.errors.full_messages }
        end
    end

    
    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation, :profile_img)
    end
end