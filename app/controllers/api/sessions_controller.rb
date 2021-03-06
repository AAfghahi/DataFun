class Api::SessionsController < ApplicationController
        def create 
            @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
            if @user 
                login!
                render "api/users/show"
            else
                render json: ['Invalid Credentials'], status: 422
        end

        def destroy
            logout!
            render json: {}
        end
end