class CreatePinrequests < ActiveRecord::Migration
  def self.up
    create_table :pinrequests do |t|
      t.string :name
      t.string :account_number
      t.string :phone_number
      t.string :email_address
      t.string :reason_for_request

      t.timestamps
    end
  end

  def self.down
    drop_table :pinrequests
  end
end
