FactoryBot.define do
  factory :character do
    name { Faker::Name.unique.name }
  end
end
