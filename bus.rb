class Bus
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def passengers_number
    return @passengers.length
  end

  def pick_up_passengers(passenger)
    @passengers << passenger
  end

  def drop_off_passenger(passenger)
    @passengers.delete(passenger)
  end

  def empty
    @passengers.clear()
  end

  def pick_up_passengers_from_bus_stop(bus_stop)
    for passenger in bus_stop.queue
      pick_up_passengers(passenger)
    end
    bus_stop.queue.clear
  end

end
