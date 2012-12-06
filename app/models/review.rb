class Review < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :body, :reviewer

  validates :body ,:presence => true
  validates :reviewer , :presence => true
end
