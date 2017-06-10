class HomepageController < ApplicationController
  include SessionsHelper
  def index
    @user = current_user
  end

end
