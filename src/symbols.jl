using Printf

function symbol_examples()
    println("--------------------------------------")
    println("Symbol examples")
    
    println()
    
    println("Symbols are immutable strings whose name is the same as their value")
    :Derek
    println(:Derek)
    
    println("Symbols are most commonly used for creating keys in dictionaries")
    d2 = Dict(:pi=>3.14, :e=>2.718)
    println(d2[:pi])
     
end

