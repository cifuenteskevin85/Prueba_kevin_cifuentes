class CommentsController < ApplicationController

  def index
    #@comments = Comment.where("post_id = ? and created_at > ?", params[:post_id], Time.at(params[:after].to_i + 1))
    @post = Post.find(params[:post_id])
    respond_to do |format|
      format.js {
        @comments = @post.comments.where("created_at > ?", Time.at(params[:after].to_i + 1)).order("created_at DESC")
      }
    end
  end

  def show
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
      if @comment.save
        respond_to do |format|
          format.html { redirect_to post_path(@post) }
          format.js 
        end
      else
      	
      end
  end
end
