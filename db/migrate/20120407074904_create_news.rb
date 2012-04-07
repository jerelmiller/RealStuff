class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.integer :id
      t.string :title
      t.text :body
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
