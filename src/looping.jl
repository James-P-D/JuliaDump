using Printf

function looping_examples()
    println("--------------------------------------")
    println("Looping examples")
    
    println()
    
    println("We can use while loops to count to 20, displaying even numbers, and aborting when we get past 10")
    i = 1
    
    while i < 20
        if (i % 2) == 0
            println(i)
            i += 1
            continue # Skip the rest of the code in the loop
        end
 
        # Make the code use the global i
        i += 1
 
        if i > 10
            break # Jump out of the loop
        end
    end
    
    println("We can use for loops to go from one number to another, e.g. 1-5")
    for i = 1:5
        println(i)
    end

    println("We can use for loops to go from one number to another, e.g. 1-100, stepping at 10 using 1:10:100")
    for i = 1:10:100
        println(i)
    end
 
    println("We can use for loops to 'for-each' value in an array")
    for i in [2,4,6]
        println(i)
    end
 
    println("We can use for loops with multiple variables (a for-loop within a for-loop)")
    for i = 1:5, j = 1:10
        println((i, j))
    end
end