class Movie < ActiveRecord::Base

  belongs_to :director  #, foreign_key: :director_id, class_name: "Director"

  has_many :roles  #, foreign_key: :movie_id, class_name: 'Role'
  has_many :actors, :through => :roles

end
