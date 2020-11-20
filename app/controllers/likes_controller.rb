class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(nutrition_id: @nutrition.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(nutrition_id: @nutrition.id)
    like.destroy
  end

  private

  def set_variables
    @nutrition = Nutrition.find(params[:nutrition_id])
    @id_name = "#like-link-#{@nutrition.id}"
  end
end
