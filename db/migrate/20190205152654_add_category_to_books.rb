class AddCategoryToBooks < ActiveRecord::Migration[5.1]
  def change
    # add_column :table, :column, :data_type
    add_column :books, :category, :string
  end
end
