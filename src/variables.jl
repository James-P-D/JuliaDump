using Printf

function variable_examples()
    println("--------------------------------------")
    println("variable_examples")
    println("Variables types can be dynamically assigned")
    s = 0
    println(s)
    s = true
    println(s)
    s = "Dog"
    println(s)
    
    println("We can also specify variable types")
    x::Int8 = 10
    println(x)
    y::Int16 = -10
    println(y)
    
    # If we try to assign a different type to a typed variable, we get an exception
    #y = 3.14
    #println(y)
    
    # Int8 : -128 - 127
    # Int16 : −32,768 - 32,767
    # Int32 : −2,147,483,648 - 2,147,483,647
    # Int64 : −2^63 - 2^63 - 1
    # Float32, Float64, UInt8, UInt16, etc.
    # UInt8, UInt16, etc.
    
    println("We can also use booleans")
    somebool = true
    println(somebool)
    
    println("Chars have to be surrounded by single quotes")
    c = 'c'
    println(c)
    
    println("Cast from Int to Char")
    c2 = Char(120)
    println(c2)
    
    println("Cast from Float to Int")
    i1 = UInt8(trunc(3.14))
    println(i1)
    
    println("Cast string to Float")
    f1 = parse(Float64,"1")
    println(f1)
    
    println("Cast string to Int")
    i2 = parse(Int8,"1")
    println(i2)
    
    println("We can also create BigInts")
    someBigInt::BigInt = 1234 * 1234 * 1234 * 1234
    println(someBigInt)
    
    println("And we can create BigFloats")
    someBigFloat::BigFloat = 1234 / 1234 / 1234 / 1234
    println(someBigFloat)
    
end