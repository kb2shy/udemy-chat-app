class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true, length: { in: 3..150}

  scope :custom_display, -> { order(:created_at).last(0)}
end
