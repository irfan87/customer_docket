class Customer < ApplicationRecord
  belongs_to :store

  validates :customer_name, presence: true
  validates :customer_address, presence: true
  validates :customer_postcode, presence: true
  validates :customer_state, presence: true
  validates :customer_phone, presence: true
end
