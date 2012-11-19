class Comment < ActiveRecord::Base
  attr_accessible :mensaje, :pseudonimo, :ost_id
  belongs_to :post
end
