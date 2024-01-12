# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

BookAuthor.destroy_all
BookAuthor.reset_pk_sequence

Book.destroy_all
Book.reset_pk_sequence

Author.destroy_all
Author.reset_pk_sequence

Book.create(
    [
    {
        title: 'La Chute',
        year: 1956
    },
    {
        title: 'La Metamorphose',
        year: 1912
    },
    {
        title: 'Gargantua',
        year: 1534
    },
    {
        title: "L'Etranger",
        year: 1942
    },
    {
        title: 'Le Proces',
        year: 1914
    },
    {
        title: "L'origine des especes",
        year: 1859
    }
    ]

)


Author.create(
    [
        {
            name: 'Franz Kafka'
        },
        {
            name: 'Rabelais'
        },
        {
            name: 'Albert Camus'
        },
        {
            name: 'Charles Darwin'
        }


    ]
)


BookAuthor.create(
    [
        {
            book_id: 1,
            author_id: 3
        },
        {
            book_id: 2,
            author_id: 1
        },
        {
            book_id: 3,
            author_id: 2
        },
        {
            book_id: 4,
            author_id: 3
        },
        {
            book_id: 5,
            author_id: 1
        },
        {
            book_id: 6,
            author_id: 4
        }
    ]
)