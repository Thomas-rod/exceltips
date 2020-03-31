class Progression < ApplicationRecord
  belongs_to :user
  belongs_to :course

  def status_visited_card
    return 'not-visited' if self.visited == false
  end

  def update_visite_status
    unless self.visited == true
      self.update!(visited: true)
    end
  end
end
