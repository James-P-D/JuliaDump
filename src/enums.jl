using Printf

# Note the creation of the enum must be outside the function!
@enum Color begin
    red = 1
    blue = 2
    green = 3
end

function enum_examples()
    println("--------------------------------------")
    println("Enum examples")
    
    println()
    
    println("We can create enums")
    favourite_color = green::Color
    println(favourite_color)
end

