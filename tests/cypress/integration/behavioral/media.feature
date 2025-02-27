Feature: CMS Users can set h:m:s values
  In order to confirm that cms users can set hours minutes and seconds
  In the field_duration field
  I need to have confirm the field is visible and saves as expected

  Scenario: Log in and confirm that field_duration has h:m:s format
    Given I am logged in as a user with the "administrator" role
    And I am at "media/add/video"
    Then I should see "Video duration in Hours:Minutes:Seconds"
    Then I am at "media/video/1278"
    Then the element with selector "input.hms-field" should have attribute "value" matching expression "0:01:45"
