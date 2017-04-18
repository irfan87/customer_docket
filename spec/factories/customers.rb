FactoryGirl.define do
  factory :customer do
    association :store
    customer_name {FFaker::Name.name}
    customer_address {FFaker::AddressUK.city}
    customer_postcode {FFaker::AddressUK.postcode}
    customer_state {FFaker::AddressUK.country}
    customer_phone {FFaker::PhoneNumber.phone_number}
  end
end
