class FavoritesController < ApplicationController

  def show
    #@nickname = current_user.nickname
    @nutritions = current_user.nutritions
    @user = User.find(params[:id])
    #特定のユーザーが登録したお気に入りを全て取得する
    @favorites = Favorite.where("user_id = ?", @user)
  end

  def create
    @user_id = current_user.id #ログインしたユーザのID
    @nutrition_id = Nutrition.find(params[:nutrition_id]) #特定のNutritionのID
    #nutrition_idに@nutrition_id、user_idに@user_idを入れて、Favoriteモデルに新しいオブジェクトを作る
    @favorite = Favorite.new(nutrition_id: @nutrition_id.id, user_id: @user_id)
    if @favorite.save!
      #保存に成功した場合、本一覧画面に戻る
      redirect_to root_path
    end
  end

  def destroy
    #binding.pry
    @favorite = Favorite.find_by(user_id:current_user.id, nutrition_id:params[:nutrition_id])
    if @favorite.destroy
      redirect_to root_path
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :nutrition_id)
  end

end
