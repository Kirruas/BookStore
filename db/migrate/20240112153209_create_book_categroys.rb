class CreateBookCategroys < ActiveRecord::Migration[7.1]
  def change
    create_table :book_categroys do |t|
      t.references :book, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
