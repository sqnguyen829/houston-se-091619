class Book

    attr_accessor :title, :word_count

    @@all = []

    def initialize(title,word_count)
        @title = title
        @word_count = word_count

        @@all << self
    end

    def self.all
        @@all
    end

    def bookauthors
        BookAuthor.all.select do |bookauthor|
            bookauthor.book == self
        end
    end

    def authors
        bookauthors.map do |bookauthor|
            bookauthor.author
        end
    end
end