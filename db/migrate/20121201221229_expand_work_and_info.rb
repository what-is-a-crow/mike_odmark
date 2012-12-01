class ExpandWorkAndInfo < ActiveRecord::Migration
  def change
    change_column :work, :content, :text
    change_column :info, :content, :text
  end
end
