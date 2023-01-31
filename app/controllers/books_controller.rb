def BooksController

  def books_written_before_1985
    query = "SELECT * FROM books WHERE publishing_year < 1985"
    Book.where('publishing_year < 1985')
  end

  # 3 most recent books written by Jules Verne
  def three_recent_jules
    query = "SELECT * FROM books JOIN authors ON authors.id = books.author_id
    WHERE authors.name = 'Jules Verne' ORDER BY publising_year DESC LIMIT 3"
    jules_verne = Author.find_by(name: 'Jules Verne')
    jules_verne.books.order(publishing_year: :desc).limit(3)

    # Book.where(author: Author.find_by(name: 'Jules Verne')).order(publishing_year: :desc).limit(3)
  end

end
