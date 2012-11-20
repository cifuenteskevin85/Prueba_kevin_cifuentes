class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id

  validates :title, :content, :presence => true #Usar validate_presence_tos
  validates :title, :length => { :minimum => 2 }
  validates :title, :uniqueness => { :message => "The title is already in use" }

  has_many :comments
  belongs_to :user 
end
