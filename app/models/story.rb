class Story < ActiveRecord::Base
  belongs_to :book
  has_many :paragraphs
end
