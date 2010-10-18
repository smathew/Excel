class CreateCcdisclosures < ActiveRecord::Migration
  def self.up
    create_table :ccdisclosures do |t|
      t.string :agree_to_terms

      t.timestamps
    end
  end

  def self.down
    drop_table :ccdisclosures
  end
end
