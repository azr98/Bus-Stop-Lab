require('minitest/rg')
require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(66,'Glasgow')
  end

  def  test_bus_number
    assert_equal(66,@bus.route_number)
  end

  def test_bus_destination
    assert_equal('Glasgow',@bus.destination)
  end

  def test_bus_drive
    assert_equal("Broom Broom",@bus.drive)
  end

  def test_passenger_count
    assert_equal(0,@bus.passenger_count)
  end

  def test_pick_up
    @bus.pick_up(@passenger)
    assert_equal(1,@bus.passenger_count)
  end

  def test_drop_off
    @bus.drop_off(@passenger)
    assert_equal(0,@bus.passenger_count)
  end

  def test_empty
    @bus.pick_up(@passenger)
    @bus.empty
    assert_equal(0,@bus.passenger_count)
  end

  

end
