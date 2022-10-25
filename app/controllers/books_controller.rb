def BooksController

  def books_written_before_1985
    query = "SELECT * FROM books WHERE publishing_year < 1985"
    # Book.where(publishing_year: 1985)
    Book.where('publishing_year < 1985')
  end

  def three_recent_jules
    query = "SELECT * FROM books b JOIN authors a ON a.id = b.author_id WHERE
    a.name = 'Jules Verne' ORDER BY b.publishing_year DESC LIMIT 3"
    author = Author.find_by(name: 'Jules Verne')
    Book.where(author: author).order(publishing_year: :desc).limit(3)
  end

end
