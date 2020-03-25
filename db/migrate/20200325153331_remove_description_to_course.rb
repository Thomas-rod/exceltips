class RemoveDescriptionToCourse < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :description
  end
end
