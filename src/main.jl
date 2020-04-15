using Printf # Needed to use printf
using Statistics

include("variables.jl")
include("strings.jl")
include("conditionals.jl")
include("looping.jl")
include("arrays.jl")
include("tuples.jl")
include("dictionaries.jl")
include("sets.jl")
include("functions.jl")
include("anonymous_functions.jl")
include("maths.jl")
include("enums.jl")
include("symbols.jl")
include("structs.jl")
include("abstract_types.jl")
include("exceptions.jl")
include("file_io.jl")
include("macros.jl")

function main()
    #variable_examples()
    #string_examples()
    #conditional_examples()
    #looping_examples()
    #array_examples()
    tuple_examples()
    dictionary_examples()
    set_examples()
    function_examples()
    anonymous_function_examples()
    maths_examples()
    enum_examples()
    symbol_examples()
    struct_examples()
    abstract_type_examples()
    exception_examples()
    file_io_examples()
    macro_examples()
    
    #Stopped at 26 mins
end

main()