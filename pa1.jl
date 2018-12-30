
function read_array(name::String)
    data = Int64[]
    daCount = 0
    open(name) do file
        for line in eachline(file)
            if daCount >= 2 #skips first 2 lines
                push!(data,parse(Int64,line))
            end
            daCount += 1
        end

    end

    #for debugging
    print("size is ")
    println(length(data))

    return data
end

function mean(data::Array{Int64})

    sum::Int64 = 0

    #sums the numbers
    for i = 1:length(data)
            sum += data[i]
    end

    #for debugging
    print("total sum is ")
    println(sum)

    #type convertion to float happens automatically
    meanVal = sum/length(data)

    #for debugging
    print("meanVal is ")
    println(meanVal)
    return meanVal

end

function findNumAbove(data::Array{Int64},meanVal::Float64)

daCount = 0

    for i = 1:length(data)
        if data[i] > meanVal
            daCount += 1
        end
    end
 return daCount
end


#change string for differant files
data = read_array("C:\\Users\\Jeremy G Diamond\\Documents\\principals\\randomtest2.txt")

meanVal = mean(data)

allDaNumbs = findNumAbove(data,meanVal)

print("The number of entries above the mean is ")
println(allDaNumbs)
