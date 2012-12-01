class Info < ActiveRecord::Base
  set_table_name :info

  validates :content, presence: true
end
