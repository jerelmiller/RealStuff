class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.text :body, :default => nil
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
