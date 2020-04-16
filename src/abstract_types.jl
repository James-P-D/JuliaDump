using Printf

# Abstract types can't be instantiated like Structs
# but they can have subtypes
abstract type Animal end

# Dog inherits from Animal 
struct Dog <: Animal
    name::String
    bark::String
end
 
# Cat inherits from Animal
struct Cat <: Animal
    name::String
    meow::String
end

function makeSound(animal::Dog)
    println("$(animal.name) says $(animal.bark)")
end
 
function makeSound(animal::Cat)
    println("$(animal.name) says $(animal.meow)")
end

function abstract_type_examples()
    println("--------------------------------------")
    println("Abstract type examples")
    
    println()
    bowser = Dog("Bowser", "Ruff")
    muffin = Cat("Muffin", "Meow")
    
    makeSound(bowser)
    makeSound(muffin)
end

