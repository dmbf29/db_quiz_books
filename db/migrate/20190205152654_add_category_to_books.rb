class AddCategoryToBooks < ActiveRecord::Migration[5.1]
  def change
    # add_column :table, :column, :type
    add_column :books, :category, :string
    # remove_column :books, :category, :string
    # add_reference ...
  end
end
