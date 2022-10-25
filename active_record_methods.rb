# 1. Add your favorite author to the DB
Author.create(name: 'Shakespeare') # only used for seeds
author = Author.new(name: 'Shakespeare')
author.save
# 2. Get all authors
Author.all

# 3. Get author with id=8
Author.find(8) # only takes an id
# Author.find_by(id: 8) # checking another column other than id

# 4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: 'Jules Verne')

# 5. Get Jules Verne's books
jules.books

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand
twenty_thousand = Book.new(
  title: "20000 Leagues under the Seas",
  publishing_year: 1870,
  author: jules
)
twenty_thousand.author = jules
twenty_thousand.save
# 7. Add Jules Verne as this book's author


# 8. Now save this book in the DB!
