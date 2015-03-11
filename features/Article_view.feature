Feature: This feature contains the case for Action to be performed on the Article view
@Article_TestCase_1
Scenario: Verify user is able to share the article
	Given I see "TOP STORIES"
	When I touch the menu icon
    When I swiped the navigation2
	When I touch the "TOP STORIES" text
	Then I should see the Title header as "TOP STORIES"
	Then I touch the first article
	Then I see the tittle of the selected article
	Then Double Tap on the screen
	Then Tap on the Share button
	Then The share popup should get displayed

@Article_TestCase_2
Scenario: Verify user is able to change the font size
	Given I see "TOP STORIES"
	When I touch the menu icon
    When I swiped the navigation2
	When I touch the "TOP STORIES" text
	Then I should see the Title header as "TOP STORIES"
	Then I touch the first article
	Then I see the tittle of the selected article
	Then Double Tap on the screen	
    Then Tap on the Font Size icon
	Then Select the "Tiny" option
	Then The Font Size should be changed
	Then Tap on the Font Size icon
	Then Select the "Small" option
	Then The Font Size should be changed
	Then Tap on the Font Size icon
	Then Select the "Normal" option
	Then The Font Size should be changed
	Then Tap on the Font Size icon
	Then Select the "Large" option
	Then The Font Size should be changed
	Then Tap on the Font Size icon
	Then Select the "Huge" option
	Then The Font Size should be changed

@Article_TestCase_3
Scenario: Verified article get saved
	Given I see "TOP STORIES"
	When I touch the menu icon
    When I swiped the navigation
	When I touch the "TOP STORIES" text
	Then I should see the Title header as "TOP STORIES"
	Then I touch the first article
	Then I see the tittle of the selected article
	Then Double Tap on the screen
	Then I touch the save icon
	Then The save icon should get highlighted
	Then I touch the menu icon
	Then I scroll until I see the saved article

@Article_TestCase_4
	Scenario: Deleting the Saved article
	Given I see "TOP STORIES"
	When I touch the menu icon
    When I swiped the navigation
	When I touch the "TOP STORIES" text
	Then I should see the Title header as "TOP STORIES"
	Then I touch the first article
	Then I see the tittle of the selected article
	Then Double Tap on the screen
	Then I touch the save icon
	Then The save icon should get highlighted
	Then I touch the menu icon
	Then I scroll until I see the saved article
	Then I touch the Delete button
	
@Article_TestCase_5
	Scenario: Text to Speech Button
	Given I see "TOP STORIES"
	When I touch the menu icon
	Then I touch the settings icon
	Then I touch the Text_to_speech_toggle
	Then I touch the settings_to_home button
	And Close the rate-popup
	Then I touch the menu icon
	Then Double Tap on the screen
	Then I touch the Text_to_speech_button
	
	
	

