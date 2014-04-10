class Inspiration < ActiveRecord::Base
	validates :content, length: { maximum: 150 }, presence: true

  def vote_score
    self.up - self.down
  end
  
end