class Question < ActiveRecord::Base
  has_one :user
  has_many :responses

  validates_associated :user
end
