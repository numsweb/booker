class Book < ActiveRecord::Base
  has_many :stories
  
  validates_presence_of :title
  validates_presence_of :description
  
  cattr_reader :per_page
  @@per_page = 10
  
end
