class BusStop

  attr_reader :name

  def initialize(name)
    @name = name
    @que = []
  end

  def add_person_to_que(person)
    @que.push(person)
  end

  def que_count
    @que.size
  end

end
