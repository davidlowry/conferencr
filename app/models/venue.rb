class Venue < ActiveRecord::Base
  has_many :events
  validates_uniqueness_of :name
  
  before_save :check_parent
  
  private
  def check_parent
    return false if venue_id==self.id
  end
  
end
