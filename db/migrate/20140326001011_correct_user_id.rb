class CorrectUserId < ActiveRecord::Migration
  def self.up
    remove_column :usertoengines, :userID
    add_column :usertoengines, :idusers, :integer
  end

  def self.down
    remove_column :usertoengines, :idusers
    add_column :usertoengines, :userID, :string, limit: 45
  end
end
