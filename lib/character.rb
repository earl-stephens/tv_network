class Character
  attr_reader :name,
              :actor,
              :salary

  def initialize(character_arg)
    @name = character_arg[:name]
    @actor = character_arg[:actor]
    @salary = character_arg[:salary]
  end
end
