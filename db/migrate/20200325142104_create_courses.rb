class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.string :pdf_course, array: true, default: []
      t.string :pdf_slip, array: true, default: []
      t.string :excel_course, array: true, default: []
      t.string :video_id, :string, default: ""
      t.timestamps
    end
  end
end
