class CreateReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :readings do |t|
      t.date :date
      t.references :user, foreign_key: true, null: false
      t.references :book, foreign_key: true, null: false
      t.timestamps
    end
  end
end
