FactoryBot.define do

  # # sequence :email do
  # #   FFaker::Internet.email
  # end

  factory :article do
    title                  { FFaker::Name.unique.name}
    body                 {"This is for testing"}
    # id                   {1}
    association :user
  end

  factory :user_address, :parent => :article do
    # state {'Selected Active'}
    # association :user
    # association :camera
    # association :camera_skill
    # association :sound_light_skill
    # association :direction_skill
    # association :editing_skill
    # addresses {|addresses| [addresses.association(:address, :nearest_metro => FFaker::Address.city)]}
    # email_addresses {|email_addresses| [email_addresses.association(:email_address)]}
    # phone_numbers {|phone_numbers| [phone_numbers.association(:phone_number)]}
  end


end


