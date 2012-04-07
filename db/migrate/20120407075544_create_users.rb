class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.integer :role_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
