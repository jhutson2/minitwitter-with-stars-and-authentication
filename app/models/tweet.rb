class Tweet < ApplicationRecord
  has_many :hearts

  validates_length_of :text, :maximum => 140, :allow_blank => true
  validates :text, presence: true
  validates :username, presence: true
end

def like_count
  hearts.where(like: true).count
end

def not_already_hearted?(user)
  hearts.where(user: user).count == 0
end
