class Book < ActiveRecord::Base
  belongs_to :user
  has_many :stories
  
  validates_presence_of :title
  validates_presence_of :description
  
  cattr_reader :per_page
  @@per_page = 10

end
