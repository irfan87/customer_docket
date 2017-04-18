class Store < ApplicationRecord
  validates :store_name, presence: true, uniqueness: true
  validates :store_address, presence: true
  validates :store_postcode, presence: true
  validates :store_state, presence: true
  validates :store_phone, presence: true

  has_many :customers
end
