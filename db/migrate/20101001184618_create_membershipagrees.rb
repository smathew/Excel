class CreateMembershipagrees < ActiveRecord::Migration
  def self.up
    create_table :membershipagrees do |t|
      t.string :agree

      t.timestamps
    end
  end

  def self.down
    drop_table :membershipagrees
  end
end
