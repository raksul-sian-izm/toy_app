class User < ApplicationRecord
  paginates_per 20

  has_many :microposts
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true
end
