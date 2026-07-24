class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name

      # created_at and updated_at
      t.timestamps
    end
  end
end
