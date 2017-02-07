class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
    # dividing by 3600 would convert @seconds into hours
    hour = @seconds / 3600
    # when a modulo is performed on @seconds, the remaining seconds is returned
    # dividing by 60 would convert the remaining seconds into minutes
    minute = @seconds % 3600 / 60
    # a modulo of 3600 gives the remaining seconds when the hours are removed
    # another modulo of 60 gives the remaining seconds when the minutes are removed
    second = @seconds % 3600 % 60

    # converts to string and formats correctly
    hour = formatTime hour
    minute = formatTime minute
    second = formatTime second

    @time_string = hour + ":" + minute + ":" + second

  end

  def formatTime time
    if time < 9
      return "0" + time.to_s
    else
      return time.to_s
    end
  end

end