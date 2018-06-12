FactoryGirl.define do
  factory :doctor do
    name { Faker::Name.name }
    address { Faker::Address.full_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    latitude 34.0522
    longitude 118.2437
    group 
  end
end
