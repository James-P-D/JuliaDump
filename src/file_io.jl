using Printf

function file_io_examples()
    println("--------------------------------------")
    println("File I/O examples")
    
    println()

    # Open a file for writing
    open("random.txt", "w") do file
        write(file, "Here is some random text\nIt is great\n")
    end
 
    # Open a file for reading
    open("random.txt") do file
        # Read whole file into a string
        data = read(file, String)
        println(data)
    end
 
    open("random.txt") do file
        # Read each line 1 at a time
        for line in eachline(file)
            println(line)
        end
    end    
end

