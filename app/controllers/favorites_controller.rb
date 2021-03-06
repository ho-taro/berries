class FavoritesController < ApplicationController
  def show
    @nutritions = Nutrition.includes(:user).order('nutritions.id DESC')
    @user = User.find(params[:id])
    @favorites = Favorite.where('user_id = ?', @user)
  end

  def create
    @user_id = current_user.id
    @nutrition_id = Nutrition.find(params[:nutrition_id])
    @favorite = Favorite.new(nutrition_id: @nutrition_id.id, user_id: @user_id)
    @favorite.save ? (redirect_to request.referer) : (redirect_to request.referer)
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, nutrition_id: params[:nutrition_id])
    @favorite.destroy ? (redirect_to request.referer) : (redirect_to request.referer)
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :nutrition_id)
  end
end
