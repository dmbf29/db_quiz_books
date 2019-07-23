class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      # t.class :column_name, default: value
      t.string :name
      t.timestamps
    end
  end
end
