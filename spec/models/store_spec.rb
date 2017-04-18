require 'rails_helper'

RSpec.describe Store, type: :model do
  it "is valid with store name, store address, store postcode, store state and store phone number" do
    store = Store.new(store_name: 'abc shop', store_address: 'jalan khatib ali', store_postcode: 12345, store_state: 'kelantan', store_phone: '0123456789')
    expect(store).to be_valid
  end

  it "is invalid if store name is nil" do
    store = Store.new(store_name: nil)
    store.valid?
    expect(store.errors[:store_name]).to include "can't be blank"
  end

  it "is invalid if store address is nil" do
    store = Store.new(store_address: nil)
    store.valid?
    expect(store.errors[:store_address]).to include "can't be blank"
  end

  it "is invalid if store postcode is nil" do
    store = Store.new(store_address: nil)
    store.valid?
    expect(store.errors[:store_address]).to include "can't be blank"
  end

  it "is invalid if store state is nil" do
    store = Store.new(store_state: nil)
    store.valid?
    expect(store.errors[:store_state]).to include "can't be blank"
  end

  it "is invalid if store phone number is nil" do
    store = Store.new(store_phone: nil)
    store.valid?
    expect(store.errors[:store_phone]).to include "can't be blank"
  end

  it "is invalid if store name is same" do
    Store.create(store_name: "abc", store_address: "jalan khatib ali", store_postcode: 12345, store_state: "kelantan", store_phone: "012345678")
    store = Store.new(store_name: "abc", store_address: "jalan guchil bayam", store_postcode: 12344, store_state: "kelantan", store_phone: "012345679")

    store.valid?
    expect(store.errors[:store_name]).to include "has already been taken"
  end
end
