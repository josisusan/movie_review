class AddMovieIdToReviewer < ActiveRecord::Migration
  def change
    add_column :reviewers, :movie_id, :integer
  end
end
