class Comentario < ApplicationRecord
  belongs_to :blog_post
  validates :correo, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
