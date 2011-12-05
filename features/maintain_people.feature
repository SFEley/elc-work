Feature: Maintain People

  As a Participation Committee admin
  I want to view and revise who's eligible to use this application
  So that we can hold everyone to the right level of commitment
  
  *NOTE:* Direct adding and editing of people is _probably_ an interim feature.  
  We will set up automatic integration with Pete Pages's directory at 
  http://www.eastlakecommons.org in a later iteration.
  
  Background:
    # Given I am a Participation Committee administrator (TODO)
    Given the following people:
    | first name | last name |
    | Bones      | Fannon    |
    | Pete       | Pages     |
    | Rachel     | Slatkin   |
    | Steve      | Eley      |
    | Zöey       | Fortuin   |
    
    
  Scenario: View All People
    (Sorting is by last name by default)
    
    When I go to the people listing
    Then I should see in order:
    | Steve Eley     |
    | Bones Fannon   |
    | Zöey Fortuin   |
    | Pete Pages     |
    | Rachel Slatkin |
    
  
    
  
    
  
  
