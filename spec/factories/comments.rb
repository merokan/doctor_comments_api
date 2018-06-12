FactoryGirl.define do
  factory :comment do
    comment_body { Faker::Lorem.sentence }
    rating { Faker::Number.between(1, 5) }
    author
    doctor
  end
end
