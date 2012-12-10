class Post < ActiveRecord::Base
  include FriendlyId
  friendly_id :title, :use => :slugged

  default_scope order('created_at DESC')
end
