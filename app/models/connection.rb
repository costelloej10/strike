class Connection < ActiveRecord::Base
  belongs_to :engines, foreign_key: :engineName
  validates :engineName, presence: true
  validates :port, presence: true, length: {maximum: 9}
  validates :senderComp, presence: true, length: {maximum: 45}
  validates :targetComp, presence: true, length: {maximum: 45}
  validates :ip, presence: true, length: {maximum: 45}
end
