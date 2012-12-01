class Work < ActiveRecord::Base
  set_table_name :work

  validates :content, presence: true
end
