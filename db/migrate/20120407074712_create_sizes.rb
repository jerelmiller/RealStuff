class CreateSizes < ActiveRecord::Migration
  def self.up
    create_table :sizes do |t|
      t.integer :id
      t.string :name
      t.decimal :price
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sizes
  end
end
