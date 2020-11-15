FactoryBot.define do
  factory :nutrition do

    ingredient {Faker::Lorem.sentence}
    calorie {"300"}
    protein {"300"}
    lipid {"300"}
    carbohydrate {"300"}
    potassium {"300"}
    calcium {"300"}
    iron {"300"}
    vitamin_a {"300"}
    vitamin_b1 {"300"}
    vitamin_b2 {"300"}
    vitamin_c {"300"}
    dietary_fiber {"300"}
    association :user
  end
end
