class CreateReges < ActiveRecord::Migration
  def self.up
    create_table :reges do |t|
      t.string :authorize_pay_overdrafts
      t.string :not_linked_savings_account
      t.string :linked_to_savings_account
      t.string :name
      t.string :account_number
      t.string :email_address
      t.string :phone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :reges
  end
end
