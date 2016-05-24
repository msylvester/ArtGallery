class Gallery < ActiveRecord::Base

  belongs_to :artwork  #, foreign_key: :director_id, class_name: "Director"

  has_many :exhibits  #, foreign_key: :movie_id, class_name: 'Role'
  has_many :artists, :through => :exhibits

  validates :title, presence: true


end
