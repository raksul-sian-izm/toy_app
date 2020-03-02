class User < ApplicationRecord
  has_many :microposts
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true
  has_one_attached :avatar
end
