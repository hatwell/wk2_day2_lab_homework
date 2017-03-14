require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')
require_relative('../person')
require_relative('../bus')

class BusStopTest < MiniTest::Test
  def setup
    @my_bus_stop = BusStop.new("Abbeyhill")
    @darren = Person.new("Darren Breen", 45)
    @bus_24 = Bus.new(24, "Glasgow")
  end

  def test_add_person_to_queue
    @my_bus_stop.add_person_to_queue(@darren)
    assert_equal(true, @my_bus_stop.queue.include?(@darren))
  end

  def test_pick_up_passengers
    @my_bus_stop.add_person_to_queue(@darren)
    @bus_24.pick_up_passengers_from_bus_stop(@my_bus_stop)
    assert_equal(0, @my_bus_stop.queue.length)
  end


end
