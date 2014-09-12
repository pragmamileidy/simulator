class AddCardsToPayments < ActiveRecord::Migration
  def change
    add_reference :payments, :card, index: true
  end
end
