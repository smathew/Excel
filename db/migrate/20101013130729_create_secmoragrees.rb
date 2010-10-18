class CreateSecmoragrees < ActiveRecord::Migration
  def self.up
    create_table :secmoragrees do |t|
      t.string :accept

      t.timestamps
    end
  end

  def self.down
    drop_table :secmoragrees
  end
end
