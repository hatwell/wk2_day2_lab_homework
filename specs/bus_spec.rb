require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @caroline = Person.new("Caroline Hatwell", 31)
    @james = Person.new("James", 25)
    @bus_22 = Bus.new(22, "Ocean Terminal")
    #@bus_23 = Bus.new(23, "Leith Links", [@caroline])
  end

  def test_drive
    assert_equal("Brum brum", @bus_22.drive)
  end

  def test_passengers_length
    assert_equal(0, @bus_22.passengers_number)
  end

  def test_pick_up_passengers
    @bus_22.pick_up_passengers(@caroline)
    assert_equal(1, @bus_22.passengers_number)
  end

  def test_drop_off_passengers
    @bus_22.pick_up_passengers(@caroline)
    @bus_22.drop_off_passenger(@caroline)
    assert_equal(0, @bus_22.passengers_number)
  end

  def test_empty_bus
    @bus_22.pick_up_passengers(@caroline)
    @bus_22.pick_up_passengers(@james)
    @bus_22.empty()
    assert_equal(0, @bus_22.passengers_number)
  end

end
