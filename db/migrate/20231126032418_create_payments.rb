class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.integer :contract_id
      t.decimal :amount
      t.date :payment_date
      t.string :payment_type

      t.timestamps
    end
    add_foreign_key :payments, :employment_contracts, column: :contract_id
  end
end
