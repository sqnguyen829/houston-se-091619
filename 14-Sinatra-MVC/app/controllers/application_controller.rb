class ApplicationController < Sinatra::Base

    set :views, "app/views"

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

    get '/books/:id' do 
        # binding.pry
        @book = Book.find(params[:id])
        erb :show
    end

end
