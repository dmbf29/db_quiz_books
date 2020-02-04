# 1. Add your favorite author to the DB
new_author = Author.new(name: "Charles Dickens")
new_author.save

empty_author = Author.new(name: nil)
empty_author.save!
# => false
# If you don't have a '!', the save will fail silently
# With the '!', the save will raise an error if invalid

Author.create(name: "Charles Dickens")
# new + save

# 2. Get all authors
Author.all

# 3. Get author with id=8
Author.find(8)

# DON'T
# Author.find_by(id: 8)
# Author.find_by_id(8)
# Author.where(id: 8).first

# 4. Get author with name="Jules Verne", store it in a variable: jules

jules = Author.find_by(name: "Jules Verne")
jules = Author.find_by_name("Jules Verne")

# 5. Get Jules Verne's books

jules.books
# because we have the association 'has_many :books' in the Author model

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand

twenty_thousand = Book.new(title: "20000 Leagues under the Seas")
# Or Book.create

# 7. Add Jules Verne as this book's author

twenty_thousand.author = jules
# twenty_thousand.author = Author.find_by(name: "Jules Verne")

# twenty_thousand.author_id = jules.id
# twenty_thousand.author = "Jules Verne"

book.author # => instance of an author

# 8. Now save this book in the DB!
twenty_thousand.save







