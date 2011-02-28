class ApplicationController < ActionController::Base
  protect_from_forgery

  protected 
    def get_countdown
      now = Time.now
      if now.hour < 12
        reveal_time = Time.new(now.year, now.month, now.day, 12, 0, 0)
      else
        reveal_time = Time.new(now.year, now.month, now.day+1, 12, 0, 0)
      end
      difference = reveal_time - now

      seconds    =  difference % 60
      difference = (difference - seconds) / 60
      minutes    =  difference % 60
      difference = (difference - minutes) / 60
      hours      =  difference % 24

      @poll_reveal_hours = hours.to_i
      @poll_reveal_minutes = minutes.to_i
      @poll_reveal_seconds = seconds.to_i
    end
end
