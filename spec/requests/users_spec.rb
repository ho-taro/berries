require 'rails_helper'
describe UsersController, type: :request do

  before do
    @user = FactoryBot.create(:user)
  end

  describe "GET #show" do
    it "showアクションにリクエストすると正常にレスポンスが返ってくる" do

      get user_path(@user)

      expect(response.status).to eq 200
    end
    it "showアクションにリクエストするとレスポンスに投稿済みのツイートのテキストが存在する" do
    end
    it "showアクションにリクエストするとレスポンスに投稿済みのツイートの画像URLが存在する" do
    end
    it "showアクションにリクエストするとレスポンスにコメント一覧表示部分が存在する" do
    end
  end

end
