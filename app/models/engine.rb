class Engine < ActiveRecord::Base

  self.primary_key = "engineName"

  has_many :usertoengines, foreign_key: :engineName
  has_many :users, through: :usertoengines
  has_many :connections, foreign_key: :engineName

  validates :engineName, presence: true, length: { maximum: 3 },
                        exclusion: { in: %w(N/A),:message => "\"%{value}\" is reserved." }
  validates :server, presence: true, length: {maximum: 45}
end
