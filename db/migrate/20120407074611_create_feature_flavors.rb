class CreateFeatureFlavors < ActiveRecord::Migration
  def self.up
    create_table :feature_flavors do |t|
      t.integer :id
      t.integer :flavor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :feature_flavors
  end
end
