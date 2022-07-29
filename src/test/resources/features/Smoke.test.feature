@Smoke1
Feature: Authentication Smoke test

  Scenario: Generate token with Valid username and password
    Given url 'https://tek-insurance-api.azurewebsites.net/'
    And path '/api/token'
    And request
      """
         {
           "username": "supervisor",
           "password": "tek_supervisor"
         }
      """
    When method post
    Then status 200

  Scenario: Generate token with invalid username and valid password
	 Given url 'https://tek-insurance-api.azurewebsites.net/'
    And path '/api/token'
    And request
      """
         {
           "username": "supervisor1",
           "password": "tek_supervisor"
         }
      """
    When method post
    Then status 404