require 'reportr'

When /^I report the interval between "(.*)" and "(.*)"$/ do |from_time, to_time|
  @report = Reportr.report(from_time.to_time, to_time.to_time)
end

Then /^I should see "(.*)"/ do |result|
  assert_equal result, @report
end
