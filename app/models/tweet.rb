class Tweet < ApplicationRecord
  has_many :hearts

  validates_length_of :text, :maximum => 140, :allow_blank => true
  validates :text, presence: true
  validates :username, presence: true

  def not_already_heart?(user)
    hearts.where(user: user).count == 0
  end
end
