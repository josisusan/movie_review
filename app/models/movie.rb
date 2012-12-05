class Movie < ActiveRecord::Base
  attr_accessible :genre, :language, :name, :tagline

  has_many :reviewer
end
