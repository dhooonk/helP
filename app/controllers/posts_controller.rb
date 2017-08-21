class PostsController < ApplicationController

def new
end

def create
  @post = Post.new
  @post.title = params[:post_title]
  @post.content = params[:post_content]
  @post.save

  redirect_to '/posts/index'
end

def index
  @posts = Post.all
end

def view
  @post = Post.find(params[:post_id])
end

def destroy
  @post = Post.find(params[:post_id])
  @post.destroy
  redirect_to '/posts/index'
end

def edit
  @post = Post.find(params[:post_id])
end

def update
  @post = Post.find(params[:post_id])
  @post.title = params[:post_title]
  @post.content = params[:post_content]
  @post.save
  redirect_to "/posts/show/#{@post.id}"
end


end
