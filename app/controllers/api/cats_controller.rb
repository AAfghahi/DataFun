class Api::CatsController < ApplicationController
    before_action :ensure_logged_in
    def index 
        @cats = current_user.cats 
        render :index 
    end
    def create
        @cat = Cat.new(cat_params)

        if @cat.save 
            render :show 
        else
            render json: @route.errors.full_messages, status:422
        end
    end

    def update 
        @cat = Cat.find(params[:id])

        if @cat.update(cat_params)
            render :show 
        else
            render json: @cat.errors.full_messages, status:422
        end
    end

    def show 
        @cat = Cat.find(params[:id])
        render :show 
    end

    def destroy
        @cat = Cat.find(params[:id])
        @cat.destroy
        render :index 
    end

    private 

    def cat_params
        params.require(:cat).permit(
            :birth_date, 
            :color,
            :name, 
            :sex,
            :description
        )
    end
end