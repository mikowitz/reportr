require "reportr/version"
require 'active_support/core_ext/date_time/conversions'
require 'active_support/core_ext/string/conversions'

module Reportr
  def self.report(from, to, opts={})
    seconds = to - from
    seconds -= (seconds % 60) if opts[:ignore_seconds]
    minutes, seconds = seconds.divmod(60)
    hours, minutes = minutes.divmod(60)
    days, hours = hours.divmod(24)
    result = "%02d:%02d:%02d" % [days, hours, minutes]
    seconds == 0 ? result : result + (":%02d" % seconds)
  end
end
