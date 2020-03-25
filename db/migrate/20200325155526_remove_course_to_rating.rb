class RemoveCourseToRating < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :course_id
  end
end
