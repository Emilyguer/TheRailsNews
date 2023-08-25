class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :title
      t.string :author
      t.text :content
      t.date :publication_date

      t.timestamps
    end
  end
end
