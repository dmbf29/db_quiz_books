def BooksController

  def books_written_before_1985
    query = "SELECT * FROM books WHERE publishing_year < 1985;"
    # Book.where('publishing_year < 1985')
  end

  def three_recent_jules
    query = "SELECT * FROM books
             JOIN authors ON books.author_id = authors.id
             WHERE authors.name = 'Jules Verne'
             ORDER BY publishing_year DESC
             LIMIT 3"
    Book.joins(:author)
     .where("authors.name = 'Jules Verne'")
     .order(publishing_year: :desc).first(3)
  end

end
