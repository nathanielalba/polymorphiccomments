class Actor < ActiveRecord::Base
	has_many :comments, as: :commentable
	validates :name, :bio, presence: true
end
