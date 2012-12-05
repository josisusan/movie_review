class Review < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :body, :reviewer

  belongs_to :movie
end
