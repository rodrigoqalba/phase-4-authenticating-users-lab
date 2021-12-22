class UsersController < ApplicationController

    def show
        user = find_user
        render json: user
    end
    
    private

    def find_user
        User.find(session[:user_id])
    end
    
end
