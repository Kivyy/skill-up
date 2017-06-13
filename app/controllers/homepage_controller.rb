class HomepageController < ApplicationController
  include SessionsHelper
  def index
    @user = current_user
    @skill =  Skill.all
  end

end
