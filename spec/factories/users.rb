FactoryBot.define do
  factory :user do
    name { "Name" }
    password { "" }
    name { "Name" }
    email { "example@test.com" }
    is_admin { false }
  end
end
