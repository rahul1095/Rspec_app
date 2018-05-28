FactoryBot.define do

  sequence :email do
    FFaker::Internet.email
  end

  factory :user do
    name                  { FFaker::Name.name}
    email                 { FactoryBot.generate(:email) }
    password              { "password" }
    password_confirmation { "password" }
  end

end


