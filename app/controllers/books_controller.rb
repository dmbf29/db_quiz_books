def BooksController

	def books_written_before_1984
		query = <<-SQL
		SELECT *
		FROM books
		WHERE publishing_year < 1985
		SQL
		DB.execute(query)
	end

	def three_recent_jules
		query = <<-SQL
		SELECT *
		FROM books
		JOIN authors ON authors.id = books.author_id
		WHERE authors.name = "Jules Vernes"
		ORDER BY books.publishing_year DESC
		LIMIT 3
		SQL
	end

end
