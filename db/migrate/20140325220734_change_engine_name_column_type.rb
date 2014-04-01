class ChangeEngineNameColumnType < ActiveRecord::Migration
  def self.up
   change_column :engines, :engineName, :string
  end

  def self.down
   change_column :engines, :engineName, :integer
  end
end
