using Printf

function map_filter_reduce_examples()
    println("--------------------------------------")
    println("map_filter_reduce_examples") 
    
    println("We can declare an integer array")
    integer_array = [1,2,3,4,5,6,7,8,9,10]
    println(integer_array)
    
    println("We can use filter() to get the even numbers")
    even_numbers = filter(n -> ((n % 2) == 0), integer_array)
    println(even_numbers)
    
    println("We can use map() to double every number")
    doubled_numbers = map(n -> (n * 2), integer_array)
    println(doubled_numbers)

    println("We can use reduce() to get the sum of every number")
    sum_numbers = reduce(+, integer_array)
    println(sum_numbers)
end