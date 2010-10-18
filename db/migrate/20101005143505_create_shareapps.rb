class CreateShareapps < ActiveRecord::Migration
  def self.up
    create_table :shareapps do |t|
      t.string :account_type
      t.string :name
      t.string :account_number
      t.string :ssn
      t.string :date_of_birth
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :home_phone
      t.string :work_phone
      t.string :email_address
      t.string :certificate_amount
      t.string :term_length
      t.string :transfer_from

      t.timestamps
    end
  end

  def self.down
    drop_table :shareapps
  end
end
