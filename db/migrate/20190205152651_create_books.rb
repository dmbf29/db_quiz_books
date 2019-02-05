class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :publishing_year
      t.string :title
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
