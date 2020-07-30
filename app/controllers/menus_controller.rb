class MenusController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
        @menus = Menu.all
        # @days = ["Monday", "Tuesday","Wednesday","Thursday","Friday"]
        # @include = @days.include? Date.today.strftime("%A")
        # @menus.each do |menu|
        #     if menu.medio_dia_type == true && @include == true
        #             menu.active = true
        #         else
        #            menu.active = false
        #     end
        # end
    end

    def show
        @menu = Menu.find(params[:id])
        @menus = Menu.all
        @meals = Meal.all
        @drinks = Drink.all
    end



end
