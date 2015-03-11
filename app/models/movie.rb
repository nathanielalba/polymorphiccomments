class Movie < ActiveRecord::Base
	has_many :comments, as: :commentable
	validates :title, :description, :length, presence: true
end
