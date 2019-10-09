class ApplicationController < Sinatra::Base


    set :method_override, true
    set :views, "app/views"

    get '/' do
        "Hello World"
    end

    get '/home' do
        erb :home
    end

end
