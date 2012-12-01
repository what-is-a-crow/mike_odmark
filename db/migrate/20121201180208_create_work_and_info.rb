class CreateWorkAndInfo < ActiveRecord::Migration
  def change
    create_table :work do |t|
      t.string :content
    end

    create_table :info do |t|
      t.string :content
    end
  end
end
