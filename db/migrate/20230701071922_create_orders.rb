class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :method_of_payment, default: 0, null: false
      t.integer :status, default: 0, null: false
      t.integer :postage
      t.integer :total_amount_billed
      t.timestamps
    end
  end
end
