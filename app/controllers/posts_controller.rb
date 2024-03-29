class PostsController < ApplicationController

  #CRUD actions within controller:
  # create, read, update, destroy
  # show
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    redirect_to post_path(@post)
  end 

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to post_path(@post)
  end 
  
end
