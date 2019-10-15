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
        @book = Book.find(params[:id])
        erb :show
    end

    get '/books/:id/edit' do 
        @book = Book.find(params[:id])
        erb :edit

    end

    post '/books' do
        Book.create(params)
        redirect '/books'
    end

    patch '/books/:id' do
        # binding.pry
        book = Book.find(params[:id])

        book.update(title: params[:title], snippet: params[:snippet])

        redirect "/books/#{book.id}"

    end

    delete '/books/:id' do 
        book = Book.find(params[:id])
        book.destroy

        redirect '/books'
    end

   

    

end
