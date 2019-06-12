# encoding: utf-8

class Library
  def initialize
    @books = []
  end

  def <<(book)
    @books << book
  end

  def to_s
    puts "Library contents:"
    @books.join("\n")
  end
end
