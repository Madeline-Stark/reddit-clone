class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  
  def new
    @post = Post.new
  end

  def create 
    @post = current_user.posts.create(post_params)
    redirect_to post_path(@post)
  end

  def show
    
  end

  def index
    @posts = Post.all
  end

  def edit

  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def current_user
    User.first
  end 

  def set_post
    @post = Post.find(params[:id])
  end

end
