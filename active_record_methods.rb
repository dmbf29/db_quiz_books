# 1. Add your favorite author to the DB
author = Author.new(name: 'Leo Tolstoy')
author.save
# normally for the seeds. or just testing. it creates instance AND saves
author = Author.create(name: 'Leo Tolstoy')

# 2. Get all authors
authors = Author.all

# 3. Get author with id=8
author_eight = Author.find(8)
# author_eight = Author.find_by(id: 8)

# 4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: "Jules Verne")

# 5. Get Jules Verne's books
jules.books
Book.where(author: jules)

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand
twenty_thousand = Book.new(
                    title: "20000 Leagues under the Seas",
                    publishing_year: 1870,
                    category: 'Science Fiction'
                  )

# 7. Add Jules Verne as this book's author
twenty_thousand.author = jules

# 8. Now save this book in the DB!
twenty_thousand.save
