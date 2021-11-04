class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def index
    @post = Post.all
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end

#http://localhost:3000/routes