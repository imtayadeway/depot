# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    sequence(:title) { |n| "My Book ##{ n }" }
    description "yyy"
    image_url "zzz.jpg"
    price 19.95
  end
end
