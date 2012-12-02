class MessagesController < ApplicationController
  before_filter do
    @current_page = "Contact"
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      ApplicationMailer.contact(@message)
      redirect_to root_path
    else
      render :new
    end
  end
end
