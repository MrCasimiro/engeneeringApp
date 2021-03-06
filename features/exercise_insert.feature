Feature: Workout view
	In order to create workouts
	As a coach
	I want to be able insert new exercises on the database

	Scenario: Insert exercise
		Given that I'm a registered coach in system
		And I'm signed in the application
		When I acess exercises page
		Then I should be able to insert new exercises
		Then the number of exercises should be increased by 1