class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50,
                                              too_long: '50 characters in Article title is the maximum allowed.' }
  validates :text, presence: true, length: { maximum: 1000,
                                             too_long: '1000 characters in Article content is the maximum allowed.' }
  validates :category_id, presence: true

  belongs_to :user

  belongs_to :category


  has_many :votes, dependent: :destroy
end
