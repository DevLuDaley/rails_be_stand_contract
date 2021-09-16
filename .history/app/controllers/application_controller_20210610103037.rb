# class ApplicationController < ActionController::API
class ApplicationController < ActionController::Base

      skip_before_action :verify_authenticity_token

      helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!, :set_user

      def login!
            
            # binding.pry
            session[:user_id] = @user.id
            # params[:user_id] = @user.id
      end

      def logged_in?
            # User.all[0]
            !!session[:user_id]
            # !!params[:user_id]
      end

      def current_user
            # User.all[0]
            @current_user ||= User.find(session[:user_id]) 
            if session[:user_id]
            end
      end
      
      def authorized_user?
            @user == current_user
      end

      def logout!
            session.clear
      end

      def set_user
            @user = User.find_by(id: session[:user_id])
      end
end
