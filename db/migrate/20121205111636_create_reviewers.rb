class CreateReviewers < ActiveRecord::Migration
  def change
    create_table :reviewers do |t|
      t.string :name
      t.string :email
      t.text :review
      t.integer :rate

      t.timestamps
    end
  end
end
