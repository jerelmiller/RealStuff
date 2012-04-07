class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.text :description, :default => nil
      t.date :event_date, :default => nil
      t.string :street, :default => nil
      t.string :city, :default => nil
      t.string :state, :default => nil
      t.datetime :event_time, :default => nil
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
