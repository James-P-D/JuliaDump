using Printf
# ARRAYS ARE INDEXED FROM ONE NOT ZERO IN JULIA!!!!

## I wrote this for displaying arrays, but we don't actually need it. println() works just fine!
#
#function display_array(some_array)
#    for x in some_array
#        print(x, " ")
#    end
#    println()
#end

function array_examples()
    println("--------------------------------------")
    println("Array examples")
    
    println()
    
    println("We can create one-dimensional arrays of zeros")
    one_dimensional_array = zeros(Int32, 5)
    println(one_dimensional_array)

    println("We can create two-dimensional arrays of zeros")
    two_dimensional_array = zeros(Int32, 5, 2)
    println(two_dimensional_array)

    println("We can create arrays where we specify the type, the size, and the initial value (in this case undefined)")
    undefined_array = Array{Int32}(undef, 5)
    println(undefined_array)

    println("We can create a int array and set initial values")
    int_array = Int32[1,2,3,4]
    println(int_array)
    
    println("We can get individual values. REMEMBER JULIA INDEXED FROM ONE NOT ZERO!")
    println(int_array[2]) # The second element really is the second element (not the third as would be the case with zero-indexing)

    println("We can create a float array and set initial values")
    float_array = Float64[1,2,3,4]
    println(float_array)
    
    println("We can create an array where each element is off a different type")
    array_of_different_types = [99, 3.1415, "foo", true, 'x']
    println(array_of_different_types)

    println("We can create an array from a range (2 to 10, stepping at intervals of 2")
    even_number_array = collect(2:2:10)
    println(even_number_array)
    
    println("We can create an array using comprehension")
    square_numbers = [n^2 for n in 1:5]
    println(square_numbers)

    println("We can also create multi-dimensional arrays using comprehension")
    another_multi_dim_array = [n * m for n in 1:5, m in 1:5]
    println(another_multi_dim_array)

    println("We can get a specific (one-indexed) element from the array")
    println(array_of_different_types[1])
    
    println("We can get the last element from the array")
    println(array_of_different_types[end])
    
    println("We can get a range, in this case items 2-4")
    println(array_of_different_types[2:4])
    
    println("We can check if an item, e.g. 3.1415 exists in the array")
    println(3.1415 in array_of_different_types)
    
    println("We can find a specific item in the array, e.g. 'x'")
    println(findfirst(isequal('x'), array_of_different_types))
    
    int_array = [1,2,3,4,5,6,7,8,10]
    println("We can find all the even numbers in an array using a generic function and findall")    
    f(a) = mod(a, 2) == 0 ? true : false
    println(findall(f, int_array))
    
    println("We can get the number of items that pass the test")
    println(count(f, int_array))
 
    println("We can get the row and column size of our 5x2 array we created earlier")
    println(size(two_dimensional_array))
 
    println("We can get the length of an array")
    println(length(int_array))
    
    println("We can get the sum of all the values in the array")
    println(sum(int_array))
    
    println("We can insert items at index 2 (second number after colon seems to specify range in target array to overwrite. increase this number to see old items in array go missing!)")
    splice!(int_array, 2:1, [100,200,300,400,500])
    println(int_array)
    
    println("We can remove items at index 2 to 6")
    splice!(int_array, 2:6)
    println(int_array)
    
    println("We get the maximum value in the array")
    println(maximum(int_array))
    
    println("We get the minimum value in the array")
    println(minimum(int_array))

    println("We can perform calculations on an array without looping")
    println(int_array * 2)
 
    println("We can store functions in an array")
    function_array = [sin, cos, tan]
    println(function_array)
    
    for n in function_array
        println(n(45))
    end    
 
    two_dimensional_int_array = [1 2 3 4; 5 6 7 8; 9 10 11 12]
    for row = 1:3, col = 1:4
        @printf("row %d, col %d = %d\n", row, col, two_dimensional_int_array[row,col])
    end
    println()
    
    println("We can print just the items from column 2")
    println(two_dimensional_int_array[:, 2])

    println("We can push items to the end of an array")    
    push!(int_array, 999)
    println(int_array)    
end

