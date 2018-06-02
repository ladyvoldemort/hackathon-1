class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :movie_id
      t.text :body
      t.belongs_to :movie, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
