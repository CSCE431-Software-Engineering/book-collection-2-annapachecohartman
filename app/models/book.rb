class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :price, presence: true
  validates :published_date, presence: true
  validates :publisher, presence: true
  validates :pages, presence: true
  validates :release_date, presence: true
end
