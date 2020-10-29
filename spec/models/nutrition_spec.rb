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
      it "食品名がないと食品は保存できない" do
        @nutrition.ingredient = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Ingredient can't be blank")
      end
      it "カロリーがないと食品は保存できない" do
        @nutrition.calorie = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Calorie can't be blank", "Calorie is invalid")
      end
      it "カロリーが全角文字では食品は保存できない" do
        @nutrition.calorie = 'あああ'
        @nutrition.valid?
        expect(@nutrition).to be_valid
      end
      it "タンパク質がないと食品は保存できない" do
        @nutrition.protein = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Protein can't be blank", "Protein is invalid")
      end
      it "脂質がないと食品は保存できない" do
        @nutrition.lipid = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Lipid can't be blank", "Lipid is invalid")
      end
      it "炭水化物がないと食品は保存できない" do
        @nutrition.carbohydrate = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Carbohydrate can't be blank", "Carbohydrate is invalid")
      end
      it "カリウムがないと食品は保存できない" do
        @nutrition.potassium = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Potassium can't be blank", "Potassium is invalid")
      end
      it "カルシウムがないと食品は保存できない" do
        @nutrition.calcium = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Calcium can't be blank", "Calcium is invalid")
      end
      it "鉄がないと食品は保存できない" do
        @nutrition.iron = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Iron can't be blank", "Iron is invalid")
      end
      it "ビタミンAがないと食品は保存できない" do
        @nutrition.vitamin_a = '' #test
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Vitamin a can't be blank", "Vitamin a is invalid")
      end
      it "ビタミンB1がないと食品は保存できない" do
        @nutrition.vitamin_b1 = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Vitamin b1 can't be blank", "Vitamin b1 is invalid")
      end
      it "ビタミンB2がないと食品は保存できない" do
        @nutrition.vitamin_b2 = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Vitamin b2 can't be blank", "Vitamin b2 is invalid")
      end
      it "ビタミンCがないと食品は保存できない" do
        @nutrition.vitamin_c = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Vitamin c can't be blank", "Vitamin c is invalid")
      end
      it "食物繊維がないと食品は保存できない" do
        @nutrition.dietary_fiber = ''
        @nutrition.valid?
        expect(@nutrition.errors.full_messages).to include("Dietary fiber can't be blank", "Dietary fiber is invalid")
      end
      it "ユーザーが紐付いていないとツイートは保存できない" do
      end
    end
  end
end
