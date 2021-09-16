# class Api::V1::UsersController < ApplicationController
class UsersController < ApplicationController
    
    def create
        # @user = User.find_by(username: session_params[:username])
        # @user = User.create(user_params)

        # binding.pry
        @user = User.find_by(username: params[:user][:username])
  
        # if @user && @user.authenticate(session_params[:password])
        if @user #&& @user.authenticate(params[:user][:password])
          login!
        render json: {
            logged_in: true,
            user: @user
        }
        else
            render json: { 
            status: 401,
            errors: ['no such user, please try again']
            }
        end
    end

    def is_logged_in?
        if logged_in? && current_user
        render json: {
            logged_in: true,
            user: current_user
        }
        else
        render json: {
            logged_in: false,
            message: 'no such user'
        }
        end
    end

    def destroy
        logout!
        render json: {
            status: 200,
            logged_out: true
        }
    end

private
    def session_params
        # params.require(:user).permit(:username, :password, :email, :password_digest)
        params.permit(:username, :password, :email, :password_digest)
    end
end