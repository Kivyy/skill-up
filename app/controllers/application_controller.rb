class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate_user
    if !current_user
      redirect_to login_path, notice: "You must be signed in to do that!"
    end
  end

helper_method  :authenticate_user
end
