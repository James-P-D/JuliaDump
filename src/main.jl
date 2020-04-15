using Printf # Needed to use printf
using Statistics

include("variables.jl")
include("strings.jl")

function main()
    s = 0
    println(s)
    s = "Dog"
    println(s)
    
    variable_examples()
    string_examples()
end

main()