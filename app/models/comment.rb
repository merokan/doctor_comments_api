class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :doctor
  #validations requiring comment_body and rating - rating must be between 1-5
  validates :comment_body, presence: true, length: { minimum: 2 }
  validates :rating, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end