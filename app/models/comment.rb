class Comment < ActiveRecord::Base
  attr_accessible :mensaje, :post_id, :pseudonimo
  belongs_to :post
end
