class User < ApplicationRecord
  has_many :comments

  validates :username, presence: true
  validates :username, length: { in: 3..25 }
  validates :password, presence: true
  validates :password, length: { in: 8..25 }
  validates :password, format: { with: /\A(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/, message: "must include at least one lowercase letter, one uppercase letter, and one digit" }
end
