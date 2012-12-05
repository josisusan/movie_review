class Reviewer < ActiveRecord::Base
  attr_accessible :email, :name, :rate, :review
end
