class UserAccount < ApplicationRecord
  validates :first_name, presence: true,length: {maximum: 50}
  validates :last_name, presence: true,length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                   length: {maximum: 100},
                   format: {with: VALID_EMAIL_REGEX}
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 8}
  validates :password, confirmation: { case_sensitive: true }
end
