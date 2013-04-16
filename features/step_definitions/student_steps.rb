Given /^I am on the student index page$/ do
  visit("/students")
end

Given /^can create a user$/ do
  page.has_content?("New Student")
  click_link("New Student")
end

Then /^I enter name "(.*?)"$/ do |arg1|
  fill_in("student_name", with: arg1)
end

Then /^I enter email "(.*?)"$/ do |arg1|
  fill_in("student_email", with: arg1)
end

Then /^I enter password "(.*?)"$/ do |arg1|
  fill_in("student_password", with: arg1)
end

Then /^I enter password confirmation "(.*?)"$/ do |arg1|
  fill_in("student_password_confirmation", with: arg1)
end

Then /^I enter major "(.*?)"$/ do |arg1|
  fill_in("student_major", with: arg1)
end

Then /^I enter graduation year "(.*?)"$/ do |arg1|
  fill_in("student_graduation_year", with: arg1)
end

Then /^I enter instrument "(.*?)"$/ do |arg1|
  fill_in("student_instrument", with: arg1)
end

Then /^I press the submit button$/ do
  click_button("Create Student")
end

Given /^The student should be created$/ do
  page.has_content?("Student was successfully created.")
end

Given /^I am on a students show page$/ do
  visit("/students")
  click_link("Show")
end

Then /^I press the "(.*?)" link$/ do |arg1|
  click_link(arg1)
  click_link("New Applied study form")
end

Then /^the student name is correct$/ do
  page.has_content?("Student")
end

Then /^I enter studies and scales "(.*?)"$/ do |arg1|
  fill_in("applied_study_form_studies_and_scales", with: arg1)
end

Then /^I enter public performances "(.*?)"$/ do |arg1|
  fill_in("applied_study_form_public_performances", with: arg1)
end

Then /^I hit the submit button$/ do
  click_button("Create Applied study form")
end

Given /^the applied form should be created$/ do
  page.has_content?("Applied study form was successfully created.")
end

Given /^there is a student$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I press the first delete link on the page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the student should be deleted$/ do
  pending # express the regexp above with the code you wish you had
end