class WorkController < ApplicationController
  before_filter do
    @current_page = "Work"
  end

  def show
    @content = Work.first_or_create.content
  end

  def edit
    @work = Work.first_or_create
  end

  def update
    @work = Work.first_or_create
    if @work.update_attributes(params[:work])
      redirect_to work_path
    else
      render :edit
    end
  end
end
