class MealsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
        @meals= Meal.all
    end

    def show
      @meal= Meal.find(params[:id])
    end

    def new
        @menu = Menu.find(params[:menu_id])
        @meal = Meal.new
      end
    
    def create
        @menu = Menu.find(params[:menu_id])
        @meal = Meal.new(meal_params)
        # @meal.user = current_user
        @meal.menu = @menu
        #----PROVISORY LINE----
        @meal.medio_dia_type = true
        #----PROVISORY LINE----

        if @meal.save
          redirect_to @menu, notice: "Menú cargado correctamente"
        else
            render :new
        end
    end


    private

    def meal_params
      params.require(:meal).permit(:photo)
    end
end
