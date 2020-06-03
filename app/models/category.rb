class Category < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :priority, presence: true, inclusion: 1..5
  has_many :articles
  scope :ordered_by_priority, -> { order(priority: :asc) }
end
