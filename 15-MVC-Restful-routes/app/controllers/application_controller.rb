class ApplicationController < Sinatra::Base

    set :views, "app/views"
    set :method_override, true

    get '/' do
        "Hello World"
    end

    get '/home' do
        erb :home
    end

    get '/books' do
        @books = Book.all
        erb :index
    end

    get '/books/new' do
        erb :new
    end

    get '/books/:id' do 
        # binding.pry
        @book = current_book
        erb :show
    end

    get '/books/:id/edit' do 
        @book = current_book
        erb :edit

    end

    post '/books' do
        book = Book.create(params)
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
