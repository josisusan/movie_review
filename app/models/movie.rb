class Movie < ActiveRecord::Base
  attr_accessible :genre, :language, :name, :tagline
  validates :name, :presence =>true
  validates :genre, :presence => true
  validates :language, :presence => true

  has_many :reviews
end
