class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50,
                                              too_long: '50 characters in Article title is the maximum allowed.' }
  validates :text, presence: true, length: { maximum: 1000,
                                             too_long: '1000 characters in Article content is the maximum allowed.' }
  belongs_to :user
  has_many :votes, dependent: :destroy
end
