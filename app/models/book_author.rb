class BookAuthor < ApplicationRecord
    belongd_to :books
    belongs_to :author
end
