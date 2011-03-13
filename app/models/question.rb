class Question < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  has_many :responses

  validates_associated :author
  accepts_nested_attributes_for :responses
end
