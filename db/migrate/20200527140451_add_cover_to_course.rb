class AddCoverToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :cover, :string
  end
end
