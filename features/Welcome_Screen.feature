Feature: Welcome Screen on very First Screen

@First_Launch
  Scenario: Very First Time Welcome Screen should get displayed
	Given I am on welcome screen
    When I see "Welcome."
	And I see "Two editions, 5 a.m. and 5 p.m. ET, bring you our award-winning storytelling,"
	And I see "Enjoy the app!"
	And I see "Swipe"
	And I swipe left
	And I should see "Tap"
	And I should see "Swipe"
	And I should see "Pinch"
	And I should see "Tap"
	And I should see "Enjoy"
	Then I see "TOP STORIES"
	And I see "AROUND THE WORLD"

@Second_Launch
  Scenario: First Landing Screen
    Given I should not see "Welcome."
	Then I see "TOP STORIES"
	And I see "AROUND THE WORLD"
	
	
