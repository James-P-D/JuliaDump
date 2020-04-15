using Printf

function set_examples()
    println("--------------------------------------")
    println("Set examples")
    
    println()
    
    println("Sets are like Arrays with the exception that all items must be unique")
    set1 = Set(["Apple", "Banana", "Carrot", "Donut"])
    set2 = Set(["Banana", "Cheese", "Bread", "Donut"])
    println(set1)
    println(set2)
    
    println("We can add items with push")
    push!(set1, "Orange")
    println(set1)
    
    println("We can check to see if an item is in the set")
    println(in("Orange", set1))
 
    println("We can add sets togethe by using union")
    set3 = union(set1, Set(["Grapefruit", "Beans"]))
    println(set3)

    println("We can find whats in both sets by using intersect")    
    println("set1 = ", set1)
    println("set2 = ", set2)
    println(intersect(set1, set2))
    
    println("We can find whats only in first one but not second")
    println("set1 = ", set1)
    println("set2 = ", set2)
    println(setdiff(set1, set2))
end

