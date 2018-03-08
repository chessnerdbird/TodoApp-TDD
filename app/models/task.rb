class Task < ApplicationRecord

	validates :name, presence: true
	validates :priority, presence: true

end
