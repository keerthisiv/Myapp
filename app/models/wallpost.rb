class Wallpost < ActiveRecord::Base
	attr_accessible :content, :user_id
	belongs_to :user

	validates :content, presence: true,
    				   length: { minimum: 10, maximum: 1000}
end
