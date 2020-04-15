using Printf

function dictionary_examples()
    println("--------------------------------------")
    println("Dictionary examples")
    
    println()

    println("Dictionaries are key/value pairs where the key must be unique")

    dictionary_1 = Dict(1 => "one", 2 => "two")
    
    println("We can display the whole dictionary")
    println(dictionary_1)
    println("Or we can display a particular value corresponding to the key")
    println(dictionary_1[2])

    println("Dictionary keys can be any time, for example strings")    
    dictionary_2 = Dict("pi" => 3.1415, "e" => 2.718)
    println(dictionary_2)
    println("And we can still get items by key")
    println(dictionary_2["pi"])
    
    println("We can also add new items")
    dictionary_2["foobar"] = 123.456
    println(dictionary_2)
    
    println("And we can delete items")
    delete!(dictionary_2, "pi")
    println(dictionary_2)
    
    println("We can check to see if a key exists, in this case 'foobar'")
    println(haskey(dictionary_2, "foobar"))
    
    println("We can display all keys")
    println(keys(dictionary_2))
    println("We can display all values")
    println(values(dictionary_2))
    
    println("We can also check to see if a particular key/value pair exists in the dictionary")
    println(in("foobar"=>123.456, dictionary_2))
    
    println("We can loop through all the key/value pairs")
    for key_value in dictionary_2
        println(key_value)
    end
    
    println("We can also loop through getting the key/value individually")
    for(key, value) in dictionary_2
        println(key, " : ", value)
    end
    
end

