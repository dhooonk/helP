class PostsController < ApplicationController

def create
  @post = Post.new
  @post.title = params[:post_title]
  @post.content = params[:post_content]
  @post.shop_id = params[:shop_id]
  @post.save

  redirect_to "/shops/show/#{params[:shop_id]}"
end

  def show
    @post = Post.find(params[:post_id])
  end

def destroy
  @post = Post.find(params[:post_id])
  @post.destroy
  redirect_to "/"
end

def edit
  @post = Post.find(params[:post_id])
end

def update
  @post = Post.find(params[:post_id])
  @post.title = params[:post_title]
  @post.content = params[:post_content]
  @post.save
  redirect_to "/"
end


end
