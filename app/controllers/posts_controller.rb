class PostsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new,:create]
  before_filter :authenticate_same_user, :only => [:destroy, :edit]
  #Metodo para la autenticacion del edit and Destroy
  def authenticate_same_user
    @post = Post.find(params[:id])
      if current_user == @post.user
        true
      else
        redirect_to post_path(@post), :alert => "You are not authorized to edit this post"
        
      end
  end



  def index
    @posts = Post.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end


  #metodos funcionales
  def create
    @post = Post.new(params[:post])
    @post.user_id = current_user.id

    if @post.save
      redirect_to posts_path, :notice => "Post Guardado!"
    else
      flash[:error] = @post.errors.inspect
      render action: "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
  end
end
