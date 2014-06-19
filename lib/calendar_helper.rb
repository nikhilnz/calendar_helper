require "calendar_helper/version"

module CalendarHelper

  MONTH_MAP = {
      january: 1,
      february: 2,
      march: 3,
      april: 4,
      may: 5,
      june: 6,
      july: 7,
      august: 8,
      september: 9,
      october: 10,
      november: 11,
      december: 12
  }

  def self.total_days month_str, year
    month = MONTH_MAP[month_str.downcase.to_sym]

    first_day_of_month = Date.new(year, month, 1)
    last_day_of_month = (month_str == 'December' ? Date.new(year + 1, 1, 1) : Date.new(year, month+1, 1)) - 1

    (last_day_of_month - first_day_of_month).to_i + 1
  end

  def self.weekends month_str, year
    month = MONTH_MAP[month_str.downcase.to_sym]

    first_day_of_month = Date.new(year, month, 1)
    last_day_of_month = (month_str == 'December' ? Date.new(year + 1, 1, 1) : Date.new(year, month+1, 1)) - 1

    count = 0
    (first_day_of_month.day.to_i .. last_day_of_month.day.to_i).each do |day|
      count += 1 if Date.new(year, month, day).saturday? || Date.new(year, month, day).sunday?
    end

    count
  end

end
