# 1. Add your favorite author to the DB

Author.create(name: 'Charles Dickens')
# or
author = Author.new(name: 'Charles Dickens')
author.save

# 2. Get all authors

Author.all

# 3. Get author with id=8

Author.find(8)
# Author.find_by(id: 8)
# Author.where(id: 8).first # DONT DO THIS

# 4. Get author with name="Jules Verne", store it in a variable: jules

# jules = Author.where(name: "Jules Verne").first
jules = Author.find_by(name: "Jules Verne")
jules = Author.find_by_name("Jules Verne") # also OK

# 5. Get Jules Verne's books

# Book.where(author: Author.find_by(name: 'Jules Verne'))
jules.books

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand
twenty_thousand = Book.new(
  title: "20000 Leagues under the Seas",
  publishing_year: 1870 #,
  # author: jules
)

# 7. Add Jules Verne as this book's author (attr_writer)
# twenty_thousand.author = Author.find_by(name: "Jules Verne")
twenty_thousand.author = jules

# 8. Now save this book in the DB!
twenty_thousand.save
