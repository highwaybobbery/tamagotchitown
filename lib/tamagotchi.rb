class Tamagotchi
  attr_accessor :id, :name

  def initialize(name)
    @name = name
    Nerd.add(self)
  end

end
