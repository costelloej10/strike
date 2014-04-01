class FirstMigrationFromImport < ActiveRecord::Migration
  def self.up
    create_table :connections, primary_key: :idconnections, force: true do |t|
      t.string  :engineName, limit: 3,  null: false
      t.string  :senderComp, limit: 45, null: false
      t.string  :targetComp, limit: 45, null: false
      t.string  :ip,         limit: 45, null: false
      t.integer :port,                  null: false
    end

    add_index :connections, [:idconnections], name: :idconnections_UNIQUE, unique: true, using: :btree

    create_table :engines, primary_key: :engineName, force: true do |t|
      t.string :server, limit: 45
    end

    add_index :engines, [:engineName], name: :engineName_UNIQUE, unique: true, using: :btree

    create_table :users, primary_key: :idusers, force: true do |t|
      t.string :username, limit: 45
      t.string :password, limit: 45
    end

    create_table :usertoengines, primary_key: :idusertoengines, force: true do |t|
      t.string :userID,     limit: 45
      t.string :engineName, limit: 3
    end

    add_index :usertoengines, [:idusertoengines], name: :idusertoengines_UNIQUE, unique: true, using: :btree
  end

  def self.down
    drop_table :connections
    drop_table :engines
    drop_table :usertoengines
    drop_table :users
  end
end
