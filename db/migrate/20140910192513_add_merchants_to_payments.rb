class AddMerchantsToPayments < ActiveRecord::Migration
  def change
    add_reference :payments, :merchant, index: true
  end
end
