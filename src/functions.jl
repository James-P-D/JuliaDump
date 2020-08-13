using Printf

# Functions can have default parameters
function can_i_vote(age=16)
    if age > 18
        println("Can Vote")
    else
        println("Can't Vote")
    end
end

# Parameters are always call-by-value
function try_to_change_value(some_val)
    println("At start of try_to_change_value() some_val is ", some_val)
    some_val = some_val * 2
    println("At end of try_to_change_value() some_val is ", some_val)
end

# Functions can have a variable number of parameters
function get_sum(args...)
    sum = 0
    for a in args
        sum += a
    end
    println(sum)
end

# Functions can return values
function squared(some_int)
    return some_int * some_int
end

# Functions can return tuples
function squared_and_cubed(some_int)
    return (some_int * some_int,
            some_int * some_int * some_int)
end

# Functions can return functions!
function get_multiplier(num)
    return function (x)
        return x * num
    end
end

# Functions can be overloaded
function get_sum(num1::Number, num2::Number)
    return num1 + num2
end

# Functions can be overloaded
function get_sum(num1::String, num2::String)
    return parse(Int32, num1) + parse(Int32, num2)
end

# Functions can be nested
function outer_function()
    function inner_function()
        println("inside inner_function()")
    end

    println("start outer_function()")
    inner_function()
    println("finished outer_function()")    
end

# We can create functions..
function doubler(x)
    x * 2
end
# ..and more functions..
function tripler(x)
    x * 3
end
# ..and then pass them as parameters
function increase(n, f)
    f(n)
end

function function_examples()
    println("--------------------------------------")
    println("Function examples")
    
    println()
    
    println("We can create single expression functions")
    getSum(x,y) = x + y
    x, y = 1, 2
    @printf("%d + %d = %d\n", x, y, getSum(x, y))
    
    println("Functions can have default parameters")
    can_i_vote()
    can_i_vote(21)
    
    println("Arguments are always passed by value")
    some_int = 10
    println("Before calling try_to_change_value() some_int is ", some_int)
    try_to_change_value(some_int)
    println("After calling try_to_change_value() some_int is ", some_int)
    
    println("Functions can have a variable number of parameters");
    get_sum(1, 2, 3, 4)
    get_sum(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    
    println("Functions can return values")
    println("5 squared is ", squared(5))
    
    println("Functions can return multiple values")
    println("5 squared and cubed is ", squared_and_cubed(5))
    
    println("Functions can return multiple values and we can get them individually")
    five_squared, five_cubed = squared_and_cubed(5)
    println("5 squared is ", five_squared)
    println("5 cubed is ", five_cubed)
    
    println("Functions can return functions")
    times_three = get_multiplier(3)
    println(times_three(10))
    
    println("Functions can be overloaded")
    println(get_sum(10, 50))
    println(get_sum("10", "50"))

    println("Functions can be nested")
    outer_function()
    
    println("We can pass functions as parameters");
    println(increase(5, doubler))
    println(increase(5, tripler))
end

