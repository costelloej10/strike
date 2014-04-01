class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :password, on: :create
  validates_uniqueness_of :username
  self.primary_key = "idusers"

  has_many :usertoengines, foreign_key: :idusers
  has_many :engines, through: :usertoengines

end
