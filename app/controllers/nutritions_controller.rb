class NutritionsController < ApplicationController

  def index
    @nutritions = Nutrition.all.order(id: "DESC")
  end

  def new
    @nutrition = Nutrition.new
  end

  def create
    Nutrition.create(nutrition_params)
  end

  def search
    @nutritions = Nutrition.search(params[:keyword])
  end

  def edit
    @nutrition = Nutrition.find(params[:id])
  end

  def update
    @nutrition = Nutrition.find(params[:id])
    @nutrition.update(nutrition_params)
  end

  def destroy
    nutrition = Nutrition.find(params[:id])
    nutrition.destroy
    redirect_back fallback_location: root_path
  end


private

  def nutrition_params
    params.require(:nutrition).permit(:ingredient, :calorie, :protein, :lipid, :carbohydrate)
  end

end
