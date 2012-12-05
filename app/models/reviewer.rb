class Reviewer < ActiveRecord::Base
  attr_accessible :email, :name, :rate, :review

  belongs_to :movie

  #def count_by_movie_id(m_id)
  #	Reviewer.where(:movie_id = m_id).count()
  #end
end
