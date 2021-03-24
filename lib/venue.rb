class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons.push(patron)
  end

  def yell_at_patrons
    @patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity?
    if @patrons.count <= @capacity
      false
    else @patrons.count > @capacity
      true
    end
  end

  def kick_out
    until @patrons.count <= @capacity
      @patrons.pop
    end
  end
end
