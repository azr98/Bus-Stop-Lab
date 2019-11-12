class Bus

  attr_reader :route_number, :destination

  def  initialize(route_number,destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    "Broom Broom"
  end

  def passenger_count()
    @passengers.size
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty
    @passengers.clear
  end

end
