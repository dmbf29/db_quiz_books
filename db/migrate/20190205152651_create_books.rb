class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publishing_year
      t.references :author, foreign_key: true, null: false

      t.timestamps
    end
  end
end

# if we added later
# add_reference :books, :author, foreign_key: true, null: false
