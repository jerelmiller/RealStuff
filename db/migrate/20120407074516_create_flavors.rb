class CreateFlavors < ActiveRecord::Migration
  def self.up
    create_table :flavors do |t|
      t.string :name
      t.integer :product_id
      t.boolean :feature_flavor, :default => false

      t.timestamps
    end
    add_index :flavors, :name
  end

  def self.down
    drop_table :flavors
  end
end
