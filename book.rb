class Book
  attr_accessor :title, :word_count, :author

  ALL = []

  def self.all
    ALL
  end

  def initialize(title, word_count, author)
    @title = title
    @word_count = word_count
    @author = author
    author.books << self
    author.total_words += word_count
    ALL << self
  end





end
