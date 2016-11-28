class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :page

      t.timestamps null: false

      t.belongs_to :author, index: true
    end
  end
end
