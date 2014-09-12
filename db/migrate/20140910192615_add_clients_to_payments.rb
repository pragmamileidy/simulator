class AddClientsToPayments < ActiveRecord::Migration
  def change
    add_reference :payments, :client, index: true
  end
end
