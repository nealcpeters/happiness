class Image < ActiveRecord::Base
	validates_format_of :path, :with => URI::regexp(%w(http https)), presence: true
	validate :up, allow_nil: false
	validate :down, allow_nil: false

  def vote_score
    self.up - self.down
  end
  
end