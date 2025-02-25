# Description: This controller is responsible for handling the requests related to the posts.
class PostsController < ApplicationController
  before_action :set_post, except: %i[index new create]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: 'Post created successfully 🎉'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update 
    if @post.update(post_params)
      redirect_to @post, notice: 'Post updated successfully 🎉'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: 'Post deleted successfully 🎉'
  end

  private

  def post_params
    params.require(:post).permit(:week, :digital_discipline, :date, :body)
  end

  def set_post
    @post = Post.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Opps...Post not found 🙃'
  end
end
