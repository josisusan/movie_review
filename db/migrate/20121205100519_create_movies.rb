class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.string :language
      t.string :tagline

      t.timestamps
    end
  end
end
