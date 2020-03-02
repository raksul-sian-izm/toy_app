class Micropost < ApplicationRecord
  belongs_to :user
  # validates :content, length: { maximum: 140 }, presence: true
  has_rich_text :content
  has_many_attached :desc_images
end
