class BookAuthor < ApplicationRecord
    belongs_to :books
    belongs_to :author
end
