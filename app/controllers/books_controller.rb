class BooksController < ApplicationController
    def get_all_books
        @books = Book.all
        render json: {"data": @books}, include: [:authors, :categories]
    end

    def get_book_by_id
        @book = Book.find(params[:id])
        render json: {"data": @book }, include: [:authors, :categories]
    end

    def add_book
        if user_signed_in?
            Book.create([
                {
                    title: params[:books][:title],
                    year: params[:books][:year]
                }
            ])
            render json: {"title": "#{params[:books][:title]}", "year": "#{params[:books][:year]}"}
           
        else 
            render json: {"data": "not logged in"}
        end
    end

end
