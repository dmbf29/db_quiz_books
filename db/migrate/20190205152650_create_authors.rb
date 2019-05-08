class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      # t.class_of_column :column_name

      t.timestamps
    end
  end
end
