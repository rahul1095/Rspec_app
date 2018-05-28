FactoryBot.define do

  # # sequence :email do
  # #   FFaker::Internet.email
  # end

  factory :like do
    user_id   {1}
   # association :article
   #  association :comment
  end

  # factory :user_address, :parent => :article do
  #   # state {'Selected Active'}
  #   # association :user
  #   # association :camera
  #   # association :camera_skill
  #   # association :sound_light_skill
  #   # association :direction_skill
  #   # association :editing_skill
  #   # addresses {|addresses| [addresses.association(:address, :nearest_metro => FFaker::Address.city)]}
  #   # email_addresses {|email_addresses| [email_addresses.association(:email_address)]}
  #   # phone_numbers {|phone_numbers| [phone_numbers.association(:phone_number)]}
  # end


end

