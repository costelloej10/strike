class ChangePasswordToPasswordDigest < ActiveRecord::Migration
  def self.up
    remove_column :users, :password
    add_column :users, :password_digest, :string
  end

  def self.down
    remove_column :users, :password_digest
    add_column :users, :password, :string, limit: 45
  end
end
