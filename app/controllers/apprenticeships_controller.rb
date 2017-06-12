class ApprenticeshipsController < ApplicationController
before_action :authenticate_user

  def create
    @post = Post.find_by(post_id: params[:id])
    byebug
    @apprenticeship = @post.Apprenticeship.find_or_create_by(apprenticeship_params)

    redirect_to  apprenticeship_messages_path(@apprenticeship)
  end




  private
  def apprenticeship_params
    params.require(:apprenticeship).permit(:requestor_id)
  end

end
