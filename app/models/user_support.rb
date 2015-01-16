class UserSupport < ActiveRecord::Base
  validates :name, presence: {message: "Must provide name!"}
  validates :email, presence: {message: "Must provide email!"}
end 
