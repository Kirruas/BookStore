class Book < ApplicationRecord
    has_many :book_authors
    has_many :authors, through: :book_authors
    has_many :book_categroys
    has_many :categories, through: :book_categroys
end
