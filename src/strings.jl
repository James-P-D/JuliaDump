using Printf

function string_examples()
    println("--------------------------------------")
    println("String examples")
    s1 = "Just some random words\n"
 
    # Size of string
    println(length(s1))
 
    # The 1st index is at 1
    println(s1[1])
 
    # Get last character
    println(s1[end])
 
    # Get a range
    println(s1[1:4])
 
    # Concatenation
    s2 = string("Yukiteru", " Amano")
    println(s2)
 
    # And
    println("Yuno" * " Gasai")
 
    # Interpolation
    i3 = 2
    i4 = 3
    println("$i3 + $i4 = $(i3 + i4)")
 
    # Multiline strings
    s3 = """I
    have
    many
    lines"""
    println(s3)
 
    # String comparisons with == > < !=
    println("Takao" > "Hiyama")
 
    # Find index for character
    println(findfirst(isequal('i'), "Keigo"))
 
    # Find a substring
    println(occursin("key", "monkey"))
 
end