class Micropost < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :content, length: { maximum: 140 }, presence: true
end
