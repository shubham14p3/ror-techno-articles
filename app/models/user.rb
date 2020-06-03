class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  has_many :articles
  has_many :votes, dependent: :destroy
end
