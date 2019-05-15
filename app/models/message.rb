class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true, length: { in: 3..150}
end
