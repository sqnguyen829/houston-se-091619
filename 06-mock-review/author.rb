class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def bookauthors
        BookAuthor.all.select do |bookauthor|
            bookauthor.author == self
        end
    end

    def books
        bookauthors.map do |bookauthor|
            bookauthor.book
        end
    end

    def write_book(title,word_count)
        b1 = Book.new(title,word_count)
        BookAuthor.new(b1, self)
    end

    def total_words
        total = 0
        books.each do |book|
            total = total + book.word_count
            # total += book.word_count same as above line
        end
        total
    end
    
end