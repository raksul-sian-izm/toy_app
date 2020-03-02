class Micropost < ApplicationRecord
  belongs_to :user
  # validates :content, length: { maximum: 140 }, presence: true
  has_rich_text :content
end
