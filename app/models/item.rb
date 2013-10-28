class Item < ActiveRecord::Base
	validates :description, presence: true
	validates :description, uniqueness: true
end
