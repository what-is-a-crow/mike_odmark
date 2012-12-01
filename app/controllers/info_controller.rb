class InfoController < ApplicationController
  def show
    @content = Info.first_or_create.content
  end

  def edit
    @info = Info.first_or_create
  end

  def update
    @info = Info.first_or_create
    if @info.update_attributes(params[:info])
      redirect_to info_path
    else
      render :edit
    end
  end
end
