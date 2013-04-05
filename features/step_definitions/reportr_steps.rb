require 'reportr'

When /^I report the interval between "(.*)" and "(.*)"( ignoring seconds)?$/ do |from_time, to_time, no_seconds|
  opts = no_seconds.present? ? { ignore_seconds: true } : {}
  @report = Reportr.report(from_time.to_time, to_time.to_time, opts)
end

Then /^I should see "(.*)"/ do |result|
  assert_equal result, @report
end
