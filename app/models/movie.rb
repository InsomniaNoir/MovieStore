class Movie < ApplicationRecord
  belongs_to :user
  validates :title, :year, presence: true
  # belongs_to :director
end
