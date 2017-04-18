require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "customer data that belongs to shop" do
    before :each do
      @store = Store.create(store_name: "abc", store_address: "jalan khatib ali", store_postcode: 12345, store_state: "kelantan", store_phone: "012345678")
    end

    context "with valid customer values" do
      it "does allow if customer is valid" do
        customer = @store.customers.build(customer_name: "james", customer_address: "kubang kerian", customer_state: "kelantan", customer_postcode: 12345, customer_phone: "0123456789")
        expect(customer).to be_valid
      end
    end

    context "with invalid customer's values" do
      it "does not allow if customer name is nil" do
        customer = @store.customers.build(customer_name: nil)
        customer.valid?
        expect(customer.errors[:customer_name]).to include "can't be blank"
      end

      it "does not allow if customer address is nil" do
        customer = @store.customers.build(customer_address: nil)
        customer.valid?
        expect(customer.errors[:customer_address]).to include "can't be blank"
      end

      it "does not allow if customer postcode is nil" do
        customer = @store.customers.build(customer_postcode: nil)
        customer.valid?
        expect(customer.errors[:customer_postcode]).to include "can't be blank"
      end

      it "does not allow if customer state is nil" do
        customer = @store.customers.build(customer_state: nil)
        customer.valid?
        expect(customer.errors[:customer_state]).to include "can't be blank"
      end

      it "does not allow if customer phone is nil" do
        customer = @store.customers.build(customer_phone: nil)
        customer.valid?
        expect(customer.errors[:customer_phone]).to include "can't be blank"
      end
    end
  end
end
