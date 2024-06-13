class Book < ApplicationRecord
  validate :at_least_one_word?
  validates :title, presence: true, length: { minimum: 2 }
  validates :author, presence: true, length: { minimum: 2 }
  validates :publishedDate, presence: true, length: { minimum: 2 }

  def at_least_one_word?
    if author.split(' ').size == 0
      errors.add(:author, "must have at least one word")
    end
  end
end
