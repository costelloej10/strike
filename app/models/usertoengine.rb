class Usertoengine < ActiveRecord::Base
  belongs_to :engine, foreign_key: :engineName
  belongs_to :user, foreign_key: :idusers

end
