class CommentsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    if @comment.save
    	redirect_to post_path(@post)
    else
    	
    end
  end
end
