class MenusController < ApplicationController
    def index
        @menus = Menu.all
    end

    def show
        @meals = Meal.all
        @drinks = Drink.all
    end



end
