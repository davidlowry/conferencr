class Purchase < ActiveRecord::Base
  has_many :tickets
end
