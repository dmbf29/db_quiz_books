# 1. Add your favorite author to the DB
saint_exupery = Author.new(name: "Saint-Exupery")
saint_exupery.save
# Author.create(name: "Saint-Exupery")

# 2. Get all authors
Author.all

# 3. Get author with id=8
Author.find(8)
# Don't do this:
# Author.where(id: 8)
# Author.find_by(id: 8)
# Author.find_by_id(8)

# 4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by_name('Jules Verne') # => instance of author
jules = Author.find_by(name: 'Jules Verne')

# 5. Get Jules Verne's books
jules.books # .books is available thanks to 'has_many :books'
# Book.where('authors.name = ?', 'Jules Verne')

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand
twenty_thousand = Book.new(title: "20000 Leagues under the Seas", publishing_year: 1870)

# 7. Add Jules Verne as this book's author
twenty_thousand.author = jules # => instance of an author

# Don't do this:
# twenty_thousand.author_id = jules.id

# 8. Now save this book in the DB!
twenty_thousand.save

