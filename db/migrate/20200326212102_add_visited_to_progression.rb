class AddVisitedToProgression < ActiveRecord::Migration[6.0]
  def change
    add_column :progressions, :visited, :boolean, :default => false
  end
end
