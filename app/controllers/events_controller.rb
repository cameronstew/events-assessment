class EventsController < ApplicationController
  before_action :set_event

  def day_one
  end

  def day_two
  end

  private
  def set_event
    @events = Event.all
    @tracks = @events.map {|event| event.track if event.track != ("Lunch" || "Party")}.uniq.compact
  end
end
