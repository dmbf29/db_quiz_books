def BooksController

  def books_written_before_1985
    query = "SELECT * FROM books WHERE publishing_year < 1985"
    @books = Book.where('publishing_year < 1985')
  end

  # What’s the SQL query to get the 3 most recent books written by Jules Verne?
  def three_recent_jules
    query = "SELECT * FROM books
    JOIN authors ON authors.id = books.author_id
    WHERE autors.name = 'Jules Verne'
    ORDER BY publishing_year DESC
    LIMIT 3
    "
    @jules = Author.find_by(name: 'Jules Verne')
    @books =  @jules.books.order(publishing_year: :desc).first(3)
    # @books = Book.where(author: @jules).order(publishing_year: :desc).first(3)

    @books = Book.joins(:author).where(author: { name: 'Jules Verne'}).order(publishing_year: :desc).first(3)
  end

end
