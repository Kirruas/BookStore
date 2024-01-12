class Category < ApplicationRecord
    has_many :book_categroys
    has_many :books, through: :book_categroys
end
