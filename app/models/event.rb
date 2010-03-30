class Event < ActiveRecord::Base
  has_many :tickets
  belongs_to :venue
  
  def venue_name
    (self.venue.name unless self.venue.nil?) || "Undecided" 
  end
  
  def venue_blurb
    (self.venue.text unless self.venue.nil?) || "Undecided" 
  end
end