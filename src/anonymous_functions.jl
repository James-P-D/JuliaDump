using Printf

function anonymous_function_examples()
    println("--------------------------------------")
    println("Anonymous function examples")
    
    println("Anonymous functions can use map to apply a function to each element of an array")
    some_array = [1, 2, 3]
    squarer = map(x -> x * x, some_array)
    println(squarer)
    
    println("We can add arrays")
    another_array = [4, 5, 6]
    array_adder = map((x,y) -> x + y, some_array, another_array)
    println(array_adder)
    
    println("We can use reduce to apply something to every element to achieve a single result")
    println(reduce(+, some_array))
    
    println("We can use reduce to find the longest word in a sentence")
    some_sentence = "This is a string and some of the words are extremely long"
    println(some_sentence)
    # Convert string to array
    string_array = split(some_sentence)
    longest = reduce((x, y) -> length(x) > length(y) ? x : y, string_array )
    println(longest)
end

