require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')

class BusTest < MiniTest::Test

  def setup
    @bus_22 = Bus.new(22, "Ocean Terminal")
  end

  def test_drive
    assert_equal("Brum brum", @bus_22.drive)
  end

end
