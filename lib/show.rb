class Show
attr_reader :name,
            :creator,
            :characters

  def initialize(name_arg, creator_arg, characters_arg)
    @name = name_arg
    @creator = creator_arg
    @characters = characters_arg
  end

  def total_salary
    total = 0
    @characters.each do |character|
      total += character.salary
    end
    return total
  end

end
