require 'rails_helper'

RSpec.describe Store, type: :model do
  it "has valid factory" do
    expect(build(:store)).to be_valid
  end

  it "is valid with store name, store address, store postcode, store state and store phone number" do
    store = build(:store)
    expect(store).to be_valid
  end

  it "is invalid if store name is nil" do
    store = build(:store, store_name: nil)
    store.valid?
    expect(store.errors[:store_name]).to include "can't be blank"
  end

  it "is invalid if store address is nil" do
    store = build(:store, store_address: nil)
    store.valid?
    expect(store.errors[:store_address]).to include "can't be blank"
  end

  it "is invalid if store postcode is nil" do
    store = build(:store, store_address: nil)
    store.valid?
    expect(store.errors[:store_address]).to include "can't be blank"
  end

  it "is invalid if store state is nil" do
    store = build(:store, store_state: nil)
    store.valid?
    expect(store.errors[:store_state]).to include "can't be blank"
  end

  it "is invalid if store phone number is nil" do
    store = build(:store, store_phone: nil)
    store.valid?
    expect(store.errors[:store_phone]).to include "can't be blank"
  end

  it "is invalid if store name is same" do
    create(:store, store_name: "abc")
    store = build(:store, store_name: "abc")

    store.valid?
    expect(store.errors[:store_name]).to include "has already been taken"
  end
end
