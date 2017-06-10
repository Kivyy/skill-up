class SkillsController < ApplicationController
  include SessionsHelper
  def index

  end

  def new
    @skill = Skill.new(skill_params)
  end

  def create
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
    params.require(:skill).permit(:subcategory_id, :title, :description, :teach)
  end
end
