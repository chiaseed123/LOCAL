class Paper < ApplicationRecord
  has_many :Scores
  has_many :Users, :through => :Scores 
end
