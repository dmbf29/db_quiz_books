def BooksController

  def books_written_before_1985
    query = "SELECT * FROM books WHERE publishing_year < 1985;"
    Book.where('publishing_year < ?', 1985)
  end

  # What’s the SQL query to get the 3 most recent books written by Jules Verne?
  def three_recent_jules
    query = "
      SELECT * FROM books
      JOIN authors ON books.author_id = authors.id
      WHERE authors.name = 'Jules Verne'
      ORDER BY books.publishing_year DESC
      LIMIT 3
    "
    author = Author.find_by(name: 'Jules Verne')
    Book.where(author: author).order(publishing_year: :desc).first(3)
  end

end
