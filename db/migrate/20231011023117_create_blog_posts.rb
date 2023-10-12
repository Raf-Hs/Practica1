class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :title,null: false
      t.text :body,null: false
      t.string :image
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.float :average_rating

      t.timestamps
    end
  end
end
