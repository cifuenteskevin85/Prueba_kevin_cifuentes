class LikesController < ApplicationController
  def new
  	@lik = Like.new
  	respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @like }
    end
  end

  def create
  	redirect_to posts_path
  end
end
