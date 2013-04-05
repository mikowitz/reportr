require "reportr/version"
require 'active_support/core_ext/date_time/conversions'
require 'active_support/core_ext/string/conversions'

module Reportr
  def self.report(from, to)
    seconds = to - from
    minutes, seconds = seconds.divmod(60)
    hours, minutes = minutes.divmod(60)
    days, hours = hours.divmod(24)
    "%02d:%02d:%02d" % [days, hours, minutes]
  end
end
