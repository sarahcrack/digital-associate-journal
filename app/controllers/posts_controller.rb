# Description: This controller is responsible for handling the requests related to the posts.
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Opps...Post not found 🙃'
  end

  def new
    @post = Post.new
  end
end
