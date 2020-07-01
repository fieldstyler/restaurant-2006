class Restaurant

  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []

  end

  def closing_time(hour)
    (@closing_time = opening_time.to_i + hour).to_s + ':00'
  end

  def add_dish(food)
    @dishes << food
  end

  def open_for_lunch?
    if opening_time.to_i < 12
      true
    else
      false
    end
  end 

  def menu_dish_names
    @dishes = @dishes.map!(&:upcase) #found '.map!(&:upcase)' online, don't understand
  end


end
