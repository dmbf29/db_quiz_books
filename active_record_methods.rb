# 1. Add your favorite author to the DB
Author.create(name: 'Stephen King')
# or
author = Author.new(name: 'Stephen King')
author.save

# 2. Get all authors
Author.all

# 3. Get author with id=8
Author.find(8) # throw an error if doesnt find
# Author.find_by(id: 8) # return nil if doesnt find

# 4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: 'Jules Verne')

# 5. Get Jules Verne's books
jules.books
# Book.where(author: jules)

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand
twenty_thousand = Book.new(title: "20000 Leagues under the Seas", publishing_year: 1870, category: 'Sci Fi')

# 7. Add Jules Verne as this book's author
twenty_thousand.author = jules

# 8. Now save this book in the DB!
twenty_thousand.save # return false
twenty_thousand.save! # throws an error message (just for seeds)
