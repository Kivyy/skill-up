class SkillsController < ApplicationController
  include SessionsHelper
  def index
    @skills = Skill.all
    if params[:search]
      @skills = Skill.search(params[:search], params[:subcategory]).order("created_at DESC")
    else
      @skills = Skill.all.order("created_at DESC")
    end
  end

  def show
    @skill = Skill.find_by(id: params[:id])
  end

  def new
    @skill = Skill.new(skill_params)
  end

  def create
    @user = current_user
    @skill = current_user.skills.new(skill_params)
    if @skill.save
      flash[:success] = "You've added a skill!"
      redirect_to current_user
    else
      redirect_to current_user
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:title, :category)
  end
end
