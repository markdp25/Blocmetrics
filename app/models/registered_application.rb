class RegisteredApplication < ApplicationRecord
  belongs_to :user

  validates_presence_of :name
  validates_presence_of :url
end
