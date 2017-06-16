FactoryGirl.define do
  factory :useringredient do
    user_id 1
    ingredient_id 1
    reaction "safe"
    user_notes "Ingredient Notes"
  end
end
