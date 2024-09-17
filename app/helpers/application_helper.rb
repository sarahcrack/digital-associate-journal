# frozen_string_literal: true
# helper methods that can be used in views
module ApplicationHelper
  # Get the day part from the date (e.g., 5 from March 5th)
  def ordinalize_day(date)
    day = date.day
    # Determine the ordinal suffix ('st', 'nd', 'rd', 'th') for the day
    ordinal = case day % 10 # This checks the last digit of the day (using modulus) to determine the ordinal suffix.
              when 1
                (day == 11 ? 'th' : 'st') # 11th is special case, otherwise it's 'st'
              when 2
                (day == 12 ? 'th' : 'nd') # 12th is special case, otherwise it's 'nd'
              when 3
                (day == 13 ? 'th' : 'rd') # 13th is special case, otherwise it's 'rd'
              else
                'th' # Everything else is 'th'
              end
    "#{day}#{ordinal} #{date.strftime('%B %Y')}" # Return the day, ordinal suffix, and month and year
  end
end
