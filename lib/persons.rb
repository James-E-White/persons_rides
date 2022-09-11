class Persons
  attr_reader :name, :age, :intensity_max

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @intensity_max = info[:intensity_max]
  end

  def adult?
    if age >= 18
      true
    else
      false
    end
  end
end
