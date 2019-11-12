require('minitest/autorun')
require('minitest/rg')
require_relative('../Bus_Stop.rb')
require_relative('person_spec')

class BusStopTest < MiniTest::Test

  def setup()
    @bus_stop = BusStop.new('Renfield Street')
  end


  def test_bus_stop_name
    assert_equal("Renfield Street", @bus_stop.name)
  end

  def test_add_person_to_que
    @bus_stop.add_person_to_que(@person)
    assert_equal(1,@bus_stop.que_count)
  end

  def test_pick_up_all
    assert_equal(0,)
  end
end
