def BooksController

  def books_written_before_1984
    query =
     "SELECT * FROM books WHERE publishing_year < 1985"
  end

  def three_recent_jules
    query =
      "SELECT * FROM books
       JOIN authors ON authors.id = books.author_id
       WHERE authors.name = 'Jules Verne'
       ORDER BY publishing_year DESC
       LIMIT 3"
  end

end
