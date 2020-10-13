class NutritionsController < ApplicationController
  before_action :move_to_index, except: [:index]
  before_action :set_nutrition, only: [:edit, :update]

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
  end

  def update
    @nutrition.update(nutrition_params)
  end

  def destroy
    nutrition = Nutrition.find(params[:id])
    nutrition.destroy
    redirect_back fallback_location: root_path
  end


private

  def set_nutrition
    @nutrition = Nutrition.find(params[:id])
  end

  def nutrition_params
    params.require(:nutrition).permit(:ingredient, :calorie, :protein, :lipid, :carbohydrate, :potassium, :calcium, :iron, :vitamin_a, :vitamin_b1, :vitamin_b2, :vitamin_c, :salt_equivalent)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
