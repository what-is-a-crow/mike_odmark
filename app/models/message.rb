class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  validates :title, :content, :email, presence: true

  attr_accessor :title, :content, :email

  def initialize(params={})
    @email = params[:email]
    @content = params[:content]
    @title = params[:title]
  end

  def persisted?
    false
  end
end
