class NutritionsController < ApplicationController

  def index
    @choice_one = Nutrition.find(1)
    @choice_two = Nutrition.find(2)
    @choice_three = Nutrition.find(3)
    @choice_four = Nutrition.find(4)
  end

  def new
    @nutrition = Nutrition.new
  end

  def show
    
  end


private


end
