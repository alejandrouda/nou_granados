class MenusController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
        @menus = Menu.all
    end

    def show
        @menu = Menu.find(params[:id])
        @menus = Menu.all
        @meals = Meal.all
        @drinks = Drink.all
    end



end
