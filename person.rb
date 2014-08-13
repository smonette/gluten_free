pizza = ["dough", "cheese", "sauce"]
pad_thai = ["noodles", "tofu", "peanuts","bean sprout"]
grilled_cheese = ["cheese", "bread"]

class Person

  attr_accessor :name, :allergy, :stomach

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
    p "YUM! I just had #{food}"

    if allergy === "peanut"
      food.each do |ingr|
        if @@contains_nuts.match(ingr)
          dump()
        end
      end
    elsif allergy === "gluten"
      food.each do |ingr|
        if @@contains_gluten.match(ingr)
          dump()
        end
      end
    elsif  allergy === "dairy"
      food.each do |ingr|
        if @@contains_dairy.match(ingr)
          dump()
        end
      end
    elsif allergy === "soy"
      food.each do |ingr|
        if @@contains_soy.match(ingr)
          dump()
        end
      end
    end



  end
  def dump
    @stomach = []
    p "BLERGH! MY STOMACH........ :("
  end

end

p1 = Person.new("Anil", "dairy")
p1.eat(pizza)
p p1.name
p p1.allergy
p p1.stomach

p2 = Person.new("Steph", "soy")
p2.eat(pad_thai)
p p2.name
p p2.allergy
p p2.stomach





