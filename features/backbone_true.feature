@disable-bundler
Feature: Adding Backbone

  Scenario: --backbone=true
    When I suspend a project called "test_project" with:
      | argument   | value |
      | --backbone | true  |
    And I cd to the "test_project" root
    Then "backbone-support" should be installed
    And "active_model_serializers" should be installed
    And "ejs" should be installed
    And "guard-jasmine" should be installed
    And "jasminerice" should be installed
    And I can cleanly rake the project
