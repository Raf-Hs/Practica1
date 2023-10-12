class UpdateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    change_table :blog_posts do |t|
      t.rename :body, :content
      t.string :image
      t.float :average_rating
    end
  end

  def down
    change_table :blog_posts do |t|
      t.rename :content, :body
      t.remove :image
      t.remove :average_rating
    end
  end
end
