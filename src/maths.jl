using Printf

function maths_examples()
    println("--------------------------------------")
    println("Matha examples")
    
    println("Lots of obvious maths functions")
    @printf("5 + 4 = %d\n", (5 + 4))
    @printf("5 - 4 = %d\n", (5 - 4))
    @printf("5 * 4 = %d\n", (5 * 4))
    @printf("5 / 4 = %d\n", (5 / 4))
    @printf("5 %% 4 = %d\n", (5 % 4)) # Note we had to escape the '%' symbol here because it's usually used for identifying parameters!
    @printf("5 ^ 4 = %d\n", (5 ^ 4))
    @printf("round(3.5) = %d\n", round(3.5))
    @printf("floor(3.5) = %d\n", floor(3.5))
    @printf("ceil(3.5) = %d\n", round(3.5))
    @printf("abs(-3.5) = %d\n", abs(-3.5))
    @printf("sqrt(100) = %d\n", sqrt(100))
    @printf("cbrt(100) = %d\n", cbrt(100))
    @printf("hypot(90,90) = %d\n", hypot(90,90))
    @printf("exp(2) = %d\n", exp(2))
    @printf("log(100) = %d\n", log(100))
    @printf("log2(100) = %d\n", log2(100))
    @printf("log10(100) = %d\n", log10(100))
    
    # Trig Functions : sin, cos, tan, cot, sec, csc
    # sinh, cosh, tanh, coth, sech, csch
    # asin, acos, atan, acot, asec, acsc
    # asinh, acosh, atanh, acoth, asech, acsch
    # sinc, cosc
    # Shortcuts available += -= *= /= ^=
    
    println("We can multiply explicitly ('2x' instead of '2 * x')")
    x = 5
    println(2x)
    
    println("The 'Dot' operators perform operations on arrays, e.g. '.* 3' multiply each element in array by 3")
    a13 = [1,2,3]
    println(a13 .* 3)
    
end

