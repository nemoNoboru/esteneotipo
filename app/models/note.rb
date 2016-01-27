class Note < ActiveRecord::Base
  validates :title , :presence => true
  validates :content , :presence => true 
  belongs_to :subject
  belongs_to :week
end
