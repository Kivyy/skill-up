class PostsController < ApplicationController
  include SessionsHelper

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

  private

  def post_params
    params.require(:post).permit(:skill_id, :description)
  end
end
