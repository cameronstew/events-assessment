class Event < ActiveRecord::Base

  def day
    date = self.start_time
    date.strftime("%d/%m/%Y")
  end

  def start
    time = self.start_time
    time.strftime("%H:%M")
  end

  def end
    time = self.end_time
    time.strftime("%H:%M")
  end

  def track_name
    self.track.split("-")[1]
  end
end
