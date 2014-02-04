class Project < ActiveRecord::Base
  attr_accessible :name

  belongs_to :user

  validates_uniqueness_of :name
  validates :name, length: { maximum: 200, minimum: 2}
end
