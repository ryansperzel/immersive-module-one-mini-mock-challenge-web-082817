class Author
  attr_accessor :books, :name, :total_words

  ALL = []

  def self.all
    ALL
  end

  def self.most_words
    sorted = self.all.sort_by do |author|
      author.total_words
    end
    sorted[0]
  end

  def initialize(name)
    @name = name
    @books = []
    @total_words = 0
    ALL << self
  end

  def write_book(title, word_count)
    book = Book.new(title, word_count, self)
  end



end
