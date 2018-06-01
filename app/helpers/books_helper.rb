module BooksHelper
  def form_books
    @book.new_record? ? "New Book" : "Edit Book"
  end
end
