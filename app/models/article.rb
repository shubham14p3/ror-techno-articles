class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50,
                                              too_long: '50 characters in Article title is the maximum allowed.',
                                              minimum: 4 }
  validates :text, presence: true, length: { maximum: 1000,

                                             too_long: '1000 characters in Article content is the maximum allowed.',
                                             minimum: 100 }
  validates :category_id, presence: true
  scope :ordered_most_recent, -> { order(created_at: :desc) }

  belongs_to :user
  belongs_to :category

  has_many :votes, dependent: :destroy

  VALID_IMAGE = /.(?:jpg|png)/i.freeze
  validates :image, presence: true, length: { maximum: 255 },
                    format: { with: VALID_IMAGE }
end
