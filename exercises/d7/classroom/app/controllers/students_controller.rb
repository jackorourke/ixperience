class StudentsController < ApplicationController
	def index
		@welcome_message = "Welcome to my website! This is an instance variable"
	end

	def classmates
		@mates = ['Matthew','Asad', 'Arya', 'Charlotte', 'Emily', 'Alex', 'Dilys',
			'Yunny', 'Enrique','Danny', 'Stanley', 'Pavi', 'Molly', 'Austin', 'Han',
			'Gloryah','Oscar', 'Susana', 'Kate', 'Blake', 'Zach', 'Kaan', 'Urvish',
			'Ben','Sofie','Jack','Bailey', 'Olivia']
	end

end