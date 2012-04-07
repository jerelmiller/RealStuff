class CreateFlavors < ActiveRecord::Migration
  def self.up
    create_table :flavors do |t|
      t.integer :id
      t.string :name
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :flavors
  end
end
