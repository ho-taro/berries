require 'rails_helper'
describe NutritionsController, type: :request do

  before do
    @nutrition = FactoryBot.create(:nutrition)
  end

  describe "GET #index" do
    it "indexアクションにリクエストすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response.status).to eq 200
    end
    it "indexアクションにリクエストするとレスポンスに登録済みの食品名が存在する" do
      get root_path
      expect(response.body).to include @nutrition.ingredient
    end
    it "indexアクションにリクエストするとレスポンスに登録済みのカロリーが存在する" do
      get root_path
      expect(response.body).to include @nutrition.calorie
    end
    it "indexアクションにリクエストするとレスポンスに食材検索フォームが存在する" do
      get root_path
      expect(response.body).to include "さっそく食材を検索しよう！"
    end
  end

end
