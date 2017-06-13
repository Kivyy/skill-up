class MessagesController < ApplicationController
  before_action do
    @apprenticeship = Apprenticeship.find(params[:apprenticeship_id])
  end


  def index
    puts @apprenticeship.accepted
    puts "*" * 100
    @apprenticeship.update_attributes(accepted: true)
    @messages = @apprenticeship.messages
    if @messages.length > 10
      @over_ten = true
      @messages = @messages[-10..-1]
    end
    if params[:m]
      @over_ten = false
      @messages = @apprenticeship.messages
    end

    if @messages.last
      if @messages.last.user_id != current_user.id
        @messages.last.read = true;
      end
    end

    @message = @apprenticeship.messages.new
  end


  def new
    @message = @apprenticeship.messages.new
  end

  def create
    @apprenticeship = Apprenticeship.find_by(id: params[:apprenticeship_id])
    @message = @apprenticeship.messages.new(message_params)
    if @message.save
      if request.xhr?
        render :partial => 'message', :locals =>{:user => @message.user, :message => @message} , layout: false
      else
        redirect_to apprenticeship_messages_path(@apprenticeship)
      end
    end

  end
  private

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
