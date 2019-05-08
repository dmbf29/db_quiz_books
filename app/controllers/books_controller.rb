def BooksController

  def books_written_before_1984
    "SELECT * FROM books
     WHERE publishing_year < 1985"
     @books = Book.where("publishing_year < 1985")
  end

  def three_recent_jules
    "SELECT * FROM books b
    JOIN authors a ON a.id = b.author_id
    WHERE a.name = 'Jules Verne'
    ORDER BY b.publishing_year DESC
    LIMIT 3"
    @books = Book.join(:author)
             .where(name: "Jules Verne")
             .order(publishing_year: :desc)
             .first(3)
  end

end
