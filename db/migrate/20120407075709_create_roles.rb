class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.integer :users_count

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
