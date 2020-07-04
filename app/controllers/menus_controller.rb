class MenusController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
        @menus = Menu.all
    end

    def show
        skip_before_action :authenticate_user!
        @meals = Meal.all
        @drinks = Drink.all
    end



end
