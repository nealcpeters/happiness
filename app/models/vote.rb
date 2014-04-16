class Vote < ActiveRecord::Base
  validates_uniqueness_of :ip_address, :scope => [:votable_id, :votable_type]
end