class Jubilation < ActiveRecord::Base
	validates :content, length: { maximum: 150 }, presence: true
end