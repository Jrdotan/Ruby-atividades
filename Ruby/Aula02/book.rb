require "pry"

Book = Struct.new(:title)
p Book
def find_book(title)
  books = []
  books << Book.new(title)
  books.find { |b| b.title == title }
end
book = find_book('Eloquent Ruby')
p book # This will print our book object
book = find_book('POODR')
p book # This will print nil

binding.pry
puts Book[:title].find_book("Eloquent Ruby")# Guess what happens next!

