class AddPosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.timestamps
      t.text :slug
    end
  end
end
