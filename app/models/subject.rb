class Subject < ActiveRecord::Base
  validates :name, :presence => true
  has_many :notes 
end
