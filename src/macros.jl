using Printf

# Lots more info on meta-programming here:
# https://docs.julialang.org/en/v1/manual/metaprogramming/
# And more examples here:
# https://gist.github.com/MikeInnes/8299575

macro apply_expression(n, exp)
    quote
        # For 1 to n
        for i = 1:$(esc(n))
            # run the expression
            $(esc(exp))
        end
    end
end

macro do_while(exp)
    # Check that first item in expression is 'while'
    @assert exp.head == :while
    esc(quote
        $(exp.args[2])
        $exp
    end)
end

function macro_examples()
    println("--------------------------------------")
    println("Macro examples")
    
    println()
    
    println("We can call macros (not that macros must be preceeded by @)")
    @apply_expression(5, println("Hello world"))
    
    z = 0
    @do_while while z < 10
        z += 1
        println(z)
    end
end

