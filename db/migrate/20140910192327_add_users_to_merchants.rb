class AddUsersToMerchants < ActiveRecord::Migration
  def change
    add_reference :merchants, :user, index: true
  end
end
