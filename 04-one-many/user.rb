class User
    attr_reader :user_name

    def initialize(user_name)
        @user_name = user_name
    end

    def tweets
        Tweet.all.select do |tweet|
            tweet.user == self
        end
    end

    def post_tweet(message)
        Tweet.new(message, self )
    end
end