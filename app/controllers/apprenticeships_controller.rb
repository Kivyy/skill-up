class ApprenticeshipsController < ApplicationController
before_action :authenticate_user

  def index
    @user = current_user
    @users = User.all
    @apprenticeships = Apprenticeship.all
  end

  def create
    @apprenticeship = Apprenticeship.find_or_create_by(apprenticeship_params)
    redirect_to  apprenticeship_messages_path(@apprenticeship)
  end

  private

  def apprenticeship_params
  params.require(:apprenticeship).permit(:sender_id, :recipient_id)
  end

end
