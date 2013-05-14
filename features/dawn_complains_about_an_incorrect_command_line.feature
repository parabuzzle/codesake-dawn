Feature: dawn complains on its command line whn incomplete
  When executed dawn needs a target to analyse

  Scenario: dawn complains if you don't specify the target framework
    When I run `bundle exec dawn`
    Then the stderr should contain "missing target framework option"

  Scenario: dawn complains if you don't specify the target
    When I run `bundle exec dawn -s`
    Then the stderr should contain "missing target"

  Scenario: dawn complains if the target doesn't exist
    When I run `bundle exec dawn -s this_is_foo`
    Then the stderr should contain "this_is_foo doesn't exist"
