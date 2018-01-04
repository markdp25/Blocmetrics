class RegisteredApplication < ApplicationRecord
  belongs_to :user
  has_many :events

  validates_presence_of :name
  validates_presence_of :url
end
