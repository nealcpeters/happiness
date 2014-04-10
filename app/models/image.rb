class Image < ActiveRecord::Base
	validates_format_of :path, :with => URI::regexp(%w(http https)), presence: true

  def vote_score
    self.up - self.down
  end
  
end