using Printf

function string_examples()
    println("--------------------------------------")
    println("String examples")
    
    println("Strings have to be surrounded by double-quotes")
    s1 = "Just some random words\n"
    println(s1)
    
    println("Size of string")
    println(length(s1))
 
    println("The 1st index is at 1 (NOT ZERO INDEXED!)")
    println(s1[1])
 
    println("Get last character")
    println(s1[end])
 
    println("Get a range")
    println(s1[1:4])
 
    println("Concatenation")
    s2 = string("Yukiteru", " Amano")
    println(s2)
 
    println("You can also concatenate strings with the * symbol")
    println("Yuno" * " Gasai")
 
    println("Interpolation (like using {0} is C#)")
    i3 = 2
    i4 = 3
    println("$i3 + $i4 = $(i3 + i4)")
 
    println("Multiline strings are surrounded by triple-quotes. Note the output includes the new-lines!")
    s3 = """I
    have
    many
    lines"""
    println(s3)
 
    println("String comparisons with == > < !=")
    println("Takao" > "Hiyama")
 
    println("Find index for character (note the result is one-indexed, so index of 'i' in 'Keigo' will be 3 not 2)")
    println(findfirst(isequal('i'), "Keigo"))
 
    println("Find a substring")
    println(occursin("key", "monkey"))
 
end