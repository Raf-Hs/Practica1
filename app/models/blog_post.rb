class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  has_many :comentarios
end
