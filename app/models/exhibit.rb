class Exhibit < ActiveRecord::Base

  belongs_to :artist
  belongs_to :gallery	

end
