# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    title "My Book Title"
    description "yyy"
    image_url "zzz.jpg"
    price 19.95
  end
end
