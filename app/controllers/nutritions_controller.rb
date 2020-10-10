class NutritionsController < ApplicationController

  def index
    @nutritions = Nutrition.all
  end

  def new
    @nutrition = Nutrition.new
  end

  def create
    Nutrition.create(nutrition_params)
  end

  def show
    
  end


private

  def nutrition_params
    params.require(:nutrition).permit(:ingredient, :calorie, :protein, :lipid, :carbohydrate)
  end

end
