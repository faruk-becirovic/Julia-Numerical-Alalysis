
function divdiff(x::Vector, y::Array, n)

    # for i in 2:5
    #     for j in 2:n
    #         #println(i)
    #         #y[i][j] = (y[i][j-1] - y[i-1][j-1])/(x[i] - x[1])
    #         print(i)
    #     end
    #     println("---")
    # end

    for i in 1:5

    # Inner For-loop
    for j in 1:i

        # Print statement
        print(i, " ")
    end
    println()
end

    result::Array

    for i in 1:n
        push!(result, y[i][i])
    end

    return result

end

x = [1, 2, 3, 4, 6]
y = [[1.0, 0, 0, 0, 0],
     [1.3, 0, 0, 0, 0],
     [1.6, 0, 0, 0, 0],
     [1.9, 0, 0, 0, 0],
     [2.2, 0, 0, 0, 0]]
n = 5
a = divdiff(x, y, n)
println(a)
