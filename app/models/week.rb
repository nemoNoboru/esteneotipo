class Week < ActiveRecord::Base
  validates :number , :presence => true
  has_many :notes
end
