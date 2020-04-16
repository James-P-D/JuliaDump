using Printf

# Note that like enums, structs must be declared outside of functions
struct customer
    name::String
    balance::Float32
    age::Int
end

mutable struct mutable_customer
    name::String
    balance::Float32
    age::Int
end
function struct_examples()
    println("--------------------------------------")
    println("Struct examples")
    
    println()
    
 
    println("We can create instances of structs and set their values and then get them again")
    bob = customer("Bob Smith", 10.50, 46)
    println(bob)
    println(bob.name)
    
    #Note that structs are immutable and hence the following line would cause an error!
    #bob.name = "Robert"
    println("If we want to change values, we have to create a mutable struct")
    james = mutable_customer("James", 1234, 21)
    println(james)
    println(james.name)
    println("...now we can change the name")
    james.name = "Jim-bob"
    println(james)
    println(james.name)
end

