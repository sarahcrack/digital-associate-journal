class Post < ApplicationRecord
  validates :week, presence: true
  validates :digital_discipline, presence: true
  validates :date, presence: true
  validates :body, presence: true
end
