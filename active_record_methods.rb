# 1. Add your favorite author to the DB
author = Author.new(name: 'Hemingway')
author.save

# 2. Get all authors
Author.all

# 3. Get author with id=8
Author.find(8)

# 4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: 'Jules Verne')

# 5. Get Jules Verne's books
# Book.where(author: jules)
jules.books

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand


# 7. Add Jules Verne as this book's author


# 8. Now save this book in the DB!
