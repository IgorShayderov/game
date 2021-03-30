FactoryBot.define do
  factory :user do
    login { "Login" }
    password { "" }
    name { "Name" }
    email { "example@test.com" }
    is_admin { false }
  end
end
