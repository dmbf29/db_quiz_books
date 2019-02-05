# 1. Add your favorite author to the DB
  author = Author.new(name: "Junot Diaz")
  author.save
  # Author.create(name: "Junot Diaz")

# 2. Get all authors
  Author.all # returns an array of authors

# 3. Get author with id=8
  Author.find(8)

# 4. Get author with name="Jules Verne", store it in a variable: jules
  jules = Author.find_by(name: "Jules Verne") # returns an INSTANCE
  # Author.where(name: "Jules Verne").first

# 5. Get Jules Verne's books
  jules.books
  # Book.where(author: jules)
  # Book.where(author: Author.find_by(name: "Jules Verne"))

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand
  twenty_thousand = Book.new(title: "20000 Leagues under the Seas")

# 7. Add Jules Verne as this book's author
  twenty_thousand.author = jules

# 8. Now save this book in the DB!
  twenty_thousand.save









