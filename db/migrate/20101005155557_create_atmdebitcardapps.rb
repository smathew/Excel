class CreateAtmdebitcardapps < ActiveRecord::Migration
  def self.up
    create_table :atmdebitcardapps do |t|
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
      t.string :cell_phone
      t.string :email_address
      t.string :employer

      t.timestamps
    end
  end

  def self.down
    drop_table :atmdebitcardapps
  end
end
