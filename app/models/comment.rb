class Comment < ActiveRecord::Base
  attr_accessible :mensaje, :post_id, :pseudonimo, :id
  validates_presence_of :mensaje
  belongs_to :post
end
