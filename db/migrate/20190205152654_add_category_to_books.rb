class AddCategoryToBooks < ActiveRecord::Migration[5.1]
  def change
    # add_reference :books, :author, foreign_key: true
    add_column :books, :category, :string
  end
end
