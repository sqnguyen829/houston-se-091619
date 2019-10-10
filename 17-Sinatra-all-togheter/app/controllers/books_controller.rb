class BooksController < ApplicationController

    # set :views, "app/views/books"


    get '/books' do
        @books = Book.all
        erb :'books/index'
    end

    get '/books/new' do
        @authors = Author.all
        erb :'books/new'
    end

    get '/books/:id' do 
        # binding.pry
        @book = current_book
        erb :'books/show'
    end

    get '/books/:id/edit' do 
        @book = current_book
        erb :'books/edit'

    end

    post '/books' do
        # binding.pry
        book = Book.new(params[:book])

        if !params[:author][:name].empty?
            new_author = Author.create(params[:author])
            book.author = new_author
        end

        book.save
        redirect "/books/#{book.id}"
    end

    patch '/books/:id' do
        # binding.pry
        book = current_book

        book.update(title: params[:title], snippet: params[:snippet])

        redirect "/books/#{book.id}"

    end

    delete '/books/:id' do 
        book = current_book
        book.destroy

        redirect '/books'
    end

    def current_book
        Book.find(params[:id])
    end

end