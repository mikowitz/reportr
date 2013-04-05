Feature: Reporting time intervals

  Scenario Outline: Parsing a basic time interval
    When I report the interval between "<from_time>" and "<to_time>"
    Then I should see "<result>"

    Examples:
      | from_time           | to_time             | result   |
      | 2012-01-01 10:01:00 | 2012-01-01 10:02:00 | 00:00:01 |
      | 2012-01-01 10:01:00 | 2012-01-01 12:02:00 | 00:02:01 |
      | 2012-01-01 10:01:00 | 2012-01-16 15:02:00 | 15:05:01 |
