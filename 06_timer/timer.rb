class Timer
  attr_accessor :seconds
  def seconds
    @seconds = 0
  end

  def time_string
    n = @seconds
    hours = padding(n / 3600)
    n %= 3600
    mins = padding(n / 60)
    n %= 60
    secs = padding(n)

    return hours + ":" + mins + ":" + secs
  end

  def padding(num)
    if num < 10
      return "%02d" % num
    else
      return num.to_s
    end
  end
end
