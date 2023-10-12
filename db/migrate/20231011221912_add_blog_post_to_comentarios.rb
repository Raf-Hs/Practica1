class AddBlogPostToComentarios < ActiveRecord::Migration[7.0]
  def change
    add_reference :comentarios, :blog_post, null: false, foreign_key: true
  end
end
