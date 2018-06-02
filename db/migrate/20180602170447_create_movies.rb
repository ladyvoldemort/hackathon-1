class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :duration
      t.string :genre
      t.string :description
      t.string :trailer

      t.timestamps
    end
  end
end
