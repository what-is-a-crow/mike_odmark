class PagesController < ApplicationController
  before_filter :authenticate_admin!, only: [:info_edit, :work_edit]

  def info
    @content = Info.first_or_create.content
  end

  def info_edit
    @content = Info.first_or_create.content
  end

  def work
    @content = Work.first_or_create.content
  end

  def work_edit
    @content = Work.first_or_create.content
  end
end
