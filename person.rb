pizza = ["dough", "cheese", "sauce"]
pad_thai = ["noodles", "tofu", "peanuts","bean sprouts"]
grilled_cheese = ["cheese", "bread"]

class Person

  attr_accessor :name, :allergy

  @@contains_gluten = /bread|dough|pasta/i
  @@contains_soy = /tofu|soy/i
  @@contains_dairy = /cheese|milk/i
  @@contains_nuts = /peanut|nut/i


  def initialize(name, allergy)
    @name = name
    @allergy = allergy
    @stomach = []
  end

  def eat(food)
    @stomach.push(food)
    if allergy === nil
      p "I'm #{@name} and I eat what I want!"
    elsif allergy === "peanut"
      food.each do |ingr|
        if @@contains_nuts.match(ingr)
          dump(ingr)
        end
      end
    elsif allergy === "gluten"
      food.each do |ingr|
        if @@contains_gluten.match(ingr)
          dump(ingr)
        end
      end
    elsif  allergy === "dairy"
      food.each do |ingr|
        if @@contains_dairy.match(ingr)
          dump(ingr)
        end
      end
    elsif allergy === "soy"
      food.each do |ingr|
        if @@contains_soy.match(ingr)
          dump(ingr)
        end
      end
    end
  end

  def dump(ingr)
    @stomach = []
    p "BLERGH! MY STOMACH...I'm #{@name} and I can't eat #{ingr} because of my #{@allergy} allergy... :("
  end

end

p1 = Person.new("Anil", "dairy")
p1.eat(pizza)

p2 = Person.new("Steph", "soy")
p2.eat(pad_thai)

p3 = Person.new("Alli", "gluten")
p3.eat(grilled_cheese)

p4 = Person.new("David", "peanut")
p4.eat(pad_thai)

p4 = Person.new("Tim", "peanut")
p4.eat(pizza)

p5 = Person.new("Palmer", nil)
p5.eat(pizza)

