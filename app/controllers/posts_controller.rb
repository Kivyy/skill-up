class PostsController < ApplicationController
  include SessionsHelper

  def index
    @posts = Post.description_search(params[:query])
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
    @skill = Skill.find_by(id: params[:skill_id])
  end

  def create
    @user = current_user
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:success] = "You've added a skill!"
      redirect_to current_user
    else
      redirect_to current_user
    end
  end

  def edit
    # byebug
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def destroy
   @post = Post.find(params[:id])
   @post.destroy
   redirect_to current_user
  end

  private

  def post_params
    params.require(:post).permit(:skill_id, :description)
  end
end
