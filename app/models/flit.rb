class Flit < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :created_at
  validates :message, :presence => true, :length => {:maximum => 140}
  after_initialize :init
  
  def init
    self.created_at ||= Time.now
  end
end
