Feature: This feature contains the case navigation and landing on different sections

@Landing_With_Article_View
Scenario: Verify the article View
	Given I see "TOP STORIES"
	When I touch the menu icon
    And I swiped the navigation2
	And I touch the "TOP STORIES" text
	Then I should see the Title header as "TOP STORIES"
	And I touch the first article
	And I see the tittle of the selected article
	And Double Tap on the screen
	And I touch the menu icon
	And I touch the "TOP STORIES" text
	And I should see the Title header as "TOP STORIES"
	And I touch the second article
	And The action buttons should be displayed

@Scrolling_To_Saved_Section	
Scenario: Verified the Saved Content displayed in the Saved Navigation
	Given I see "TOP STORIES"
	When I touch the menu icon
    And I swiped the navigation
	And I touch the "TOP STORIES" text
	Then I should see the Title header as "TOP STORIES"
	And I touch the first article
	And I see the tittle of the selected article
	And Double Tap on the screen
	And I touch the save icon
	And The save icon should get highlighted
	And I touch the menu icon
	And I scroll until I see the saved article
	
@Hat_Text_Verifcation_on_FirstLanding
Scenario: Verify to the top stories data display on the articles display under Top stories
   Given I see "TOP STORIES"
   When I tap "TOP STORIES" tab
   Then I should see the second Title1 hat as "TOP STORIES"
   And I should see the current date with edition on the first article

@Hat_Text_Verifcation_With_Selected_Tab  
Scenario: Verify to the text over the articles for Around the world tab
   Given I see "TOP STORIES"
   Given I touch "AROUND THE WORLD" tab
   Then I should see the Title hat text on both first and second articles as "AROUND THE WORLD"
   
