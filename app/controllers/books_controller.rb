def BooksController

  def books_written_before_1985
    # Q6 - What's the simple query to get books written before 1985?
    query = "SELECT * FROM books WHERE publishing_year < 1985"
  end

  def three_recent_jules
    # Q7 - What's the simple query to get the 3 most recent books written by Jules Verne?
    query =
    "SELECT * FROM books
    JOIN authors ON authors.id = books.author_id
    WHERE authors.name = 'Jules Verne'
    ORDER BY books.publishing_year DESC
    LIMIT 3"
  end

end
