# 1. Add your favorite author to the DB

Author.create(name: "Rudyard")
# or
author = Author.new(name: "Rudyard")
author.save

# 2. Get all authors

Author.all

# 3. Get author with id=8

Author.find(8)
# Author.find_by(id: 8)

# 4. Get author with name="Jules Verne", store it in a variable: jules

jules = Author.find_by(name: "Jules Verne")
# or
jules = Author.find_by_name("Jules Verne")
# or
# jules = Author.where(name: "Jules Verne").first

# 5. Get Jules Verne's books

jules.books

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand

twenty_thousand = Book.new(
                    title: "20000 Leagues under the Seas",
                    publishing_year: ‎1870
                  )

# 7. Add Jules Verne as this book's author

twenty_thousand.author = jules
# twenty_thousand.author = Author.find_by(name: "Jules Verne")


# 8. Now save this book in the DB!
twenty_thousand.save

