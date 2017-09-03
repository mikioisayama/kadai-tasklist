class Task < ApplicationRecord
  validates :content, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 1 }
end
