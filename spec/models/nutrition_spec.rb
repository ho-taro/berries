require 'rails_helper'

RSpec.describe Nutrition, type: :model do
  before do
    @nutrition = FactoryBot.build(:nutrition)
  end

  describe '食品の保存' do
    context "食品が保存できる場合" do
      it "食品名と全ての栄養素があれば保存される" do
        expect(@nutrition).to be_valid
      end
    end
    context "食品が保存できない場合" do
      it "食品名がないとツイートは保存できない" do
        @nutrition.ingredient = ''
        @nutrition.valid?

      end
      it "ユーザーが紐付いていないとツイートは保存できない" do
      end
    end
  end
end
