def BooksController

  def books_written_before_1985
    query = "SELECT * FROM books WHERE publishing_year < 1985"
    Book.where('publishing_year < 1985')
  end

  def three_recent_jules
    query = "
    SELECT * FROM books
    JOIN authors ON authors.id = books.author_id
    WHERE name = 'Jules Verne'
    ORDER BY publishing_year DESC
    LIMIT 3
    "
    jules_verne = Author.find_by(name: 'Jules Verne')
    # Book.where(author: jules_verne)
    jules_verne.books.order(publishing_year: :desc).first(3)
  end

end
