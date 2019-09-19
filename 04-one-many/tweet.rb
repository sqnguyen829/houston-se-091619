class Tweet

    attr_accessor :message

    attr_reader :user

    @@all = []

    def initialize(message, user)
        @message = message
        @user = user

        @@all << self
    end


    def self.all
        @@all
    end

    def user_name
        self.user.user_name
    end

end