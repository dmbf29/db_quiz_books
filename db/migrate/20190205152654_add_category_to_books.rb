class AddCategoryToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :category, :string
    # add_column :table, :column, :class
  end
end
