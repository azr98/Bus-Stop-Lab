require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')


class PersonTest < MiniTest::Test

  def setup()
    @person = Person.new('Azhar',21)
  end


  def test_person_name
    assert_equal("Azhar",@person.name)
  end

  def test_person_age
    assert_equal(21,@person.age)
  end


end
