class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :imagen

  #attr for post with PaperClip
  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :title, :content, :presence => true #Usar validate_presence_tos
  validates :title, :length => { :minimum => 2 }
  validates :title, :uniqueness => { :message => "The title is already in use" }

  has_many :comments
  belongs_to :user 

end
