class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.date :payment_date
      t.string :status
      t.integer :number_confirmation
      t.text :description
      t.string :language

      t.timestamps
    end
  end
end
