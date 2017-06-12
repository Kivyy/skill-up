class ApprenticeshipsController < ApplicationController
before_action :authenticate_user

  def create
    @apprenticeship = Apprenticeship.find_or_create_by(apprenticeship_params)
    if @apprenticeship
      redirect_to  skill_post_path(@apprenticeship.post.skill, @apprenticeship.post)
    else
      @errors = ["You have already sent a request to this post"]
    end
  end




  private
  def apprenticeship_params
    params.require(:apprenticeship).permit(:requestor_id, :post_id , :offer)
  end

end
