class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.text :actors
      t.text :directors
      t.string :image_url
      t.date :release_date

      t.timestamps
    end
  end
end
