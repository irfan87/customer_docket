class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.text :customer_address
      t.integer :customer_postcode
      t.string :customer_state
      t.string :customer_phone
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
