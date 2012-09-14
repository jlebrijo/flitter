class Flit < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :message, :created_at
  after_initialize :init
  
  def init
    self.created_at ||= Time.now
  end
end
