class Reviewer < ActiveRecord::Base
  attr_accessible :email, :name, :rate, :review

  belongs_to :movie
end
