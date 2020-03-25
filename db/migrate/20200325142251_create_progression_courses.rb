class CreateProgressionCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :progression_courses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
