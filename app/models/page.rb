class Page < ApplicationRecord
	validates :name, :photo presence: true 
	

end
