class CreateHelocagrees < ActiveRecord::Migration
  def self.up
    create_table :helocagrees do |t|
      t.string :read_brochure

      t.timestamps
    end
  end

  def self.down
    drop_table :helocagrees
  end
end
