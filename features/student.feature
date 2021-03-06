 Feature: Student

 Background:

     Given I am on the student index page
     And can create a user

 Scenario: create a new student

    Then I enter name "name"
    Then I enter email "example@example.org"
    Then I enter password "password"
    Then I enter password confirmation "password"
    Then I enter major "performance"
    Then I enter graduation year "2015"
    Then I enter instrument "Kazoo"
    And I press the "Create Student" button
     * The student should be created

Scenario: Add an applied study form to a student

    Given I am on a students show page
    Then I press the "Applied Study Forms" link
    And the student name is correct
    Then I enter studies and scales "Ab major"
    Then I enter public performances "Band concert"
     And I hit the submit button
     * the applied form should be created

Scenario: Remove a student
       
        Given I am on the student index page 
       Given there is a student
       Then I press the first delete link on the page
       Then the student should be deleted

Scenario: Add Repertoire for a student

        Given I am on a students show page
        Then I enter Title "Title"
        Then I enter Composer "Example Composer"
        Then I enter Duration "5"
        Then I enter Memorized "yes"
        And I press the "Create Repertoire" button
        * the repertoire should be created
        And the repertoire should be added