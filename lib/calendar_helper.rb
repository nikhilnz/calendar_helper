require "calendar_helper/version"

module CalendarHelper

  MONTH_MAP = {
      january: {month: 1, total_days: 31},
      february: {month: 2},
      march: {month: 3, total_days: 31},
      april: {month: 4, total_days: 30},
      may: {month: 5, total_days: 31},
      june: {month: 6, total_days: 30},
      july: {month: 7, total_days: 31},
      august: {month: 8, total_days: 31},
      september: {month: 9, total_days: 30},
      october: {month: 10, total_days: 31},
      november: {month: 11, total_days: 30},
      december: {month: 12, total_days: 31}
  }

  class DateWrapper

    attr_reader :total_days

    def initialize month_str, year
      @year = year
      @month = MONTH_MAP[month_str.downcase.to_sym][:month]

      @total_days = if month_str.downcase.to_sym == :february
                      Date.new(@year, @month, 1).leap? ? 29 : 28
                    else
                      MONTH_MAP[month_str.downcase.to_sym][:total_days]
                    end
    end

    def weekends
      (1 .. @total_days).count do |day|
        date = Date.new(@year, @month, day)
        date.saturday? || date.sunday?
      end
    end
  end

end
