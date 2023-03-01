require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

DatabaseConnection.connect('book_store')

book_repository = BookRepository.new

book_repository.all.each do |book|
  id = book.id
  title = book.title
  author = book.author_name
  puts "#{id} - #{title} - #{author}"
end