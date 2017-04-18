FactoryGirl.define do
  factory :store do
    store_name {FFaker::Company.name}
    store_address {FFaker::AddressUK.city}
    store_state {FFaker::AddressUK.country}
    store_postcode {FFaker::AddressUK.postcode}
    store_phone {FFaker::PhoneNumber.phone_number}
  end
end
