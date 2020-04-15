using Printf

function tuple_examples()
    println("--------------------------------------")
    println("Tuple examples")
    
    println()
    
    println("Tuples are like arrays, except the value cannot be changed")
    example_tuple = (1,2,3,4)
    println(example_tuple)
    
    println("We can still get individual items (still one-indexed, not zero-indexed)")
    println(example_tuple[1])
    
    println("And we can still loop through items in a tuple")
    for i in example_tuple
        println(i)
    end
    
    println("We can also create multi-dimensional tuples")
    multi_dimensional_tuple = ((1,2), (3,4))
    println(multi_dimensional_tuple)
    
    println("And we can still access individual items in them")
    println(multi_dimensional_tuple[2][2])

    println("And we can loop over items in a multi-dimensional tuple")
    for i in multi_dimensional_tuple
        println(i)
    end
   
    println("Finally, we can create named tuples")
    named_tuple = (sue = ("Sue", 100), paul = ("Paul", 23))
    println(named_tuple)
    
    println("And we can get individual items by name")
    println(named_tuple.sue)    
end

