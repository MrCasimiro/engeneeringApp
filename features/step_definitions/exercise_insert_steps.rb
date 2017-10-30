Given(/^that I'm a registered coach in system$/) do
	@person = Person.create!(name: "coach", email: "coach@coach.com",
 	phone: "1111111", age: 21, gender: "other", password: "123456", password_confirmation: "123456")
	@current_coach = Coach.create!(person_id: @person.id)

end

Given(/^that I'm signed in the system$/) do
	pending # Write code here that turns the phrase above into concrete actions
end

When(/^I acess exercises page$/) do
	visit ("/fexercises/")
end

Then(/^I should be able to insert new exercises$/) do
	@exercise_count = Exercise.count
	fill_in "exercise_name_exercise", :with => "flexao"
	click_button "submit_bt"
end

Then(/^the number of exercises should be increased by (\d+)$/) do |arg1|
	Exercise.count.should == @exercise_count + 1
end
