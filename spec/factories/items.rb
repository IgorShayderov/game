FactoryBot.define do
  factory :item do
    name { Faker::String.unique.random }
    item_kind { :weapon }
  end
end
