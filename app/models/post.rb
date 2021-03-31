class Post < ApplicationRecord
  belongs_to :user

  validates :URL, presence: true
  validates :title, presence: true
  validates :user_id, presence: true
end
