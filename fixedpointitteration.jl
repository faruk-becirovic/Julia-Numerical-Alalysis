
#function that applies fixwed point itteration.
#@INPUT p0 = initial approximation, e = tolerance, n0 = max itterations
function fixedpoint(g::Function, p0, e, n0)
    i = 1
    for i in 1:n0
        p = g(p0)
        println(string(i, " ", p0))
        if abs(p - p0) <= e
            return p
        end
        p0 = p
    end

    return string("method failed after ", n0, " itterations.")
end

p0 = 1
e = 10^(-5)
n0 = 100
g(x) = x - (x^5 - 7)/(x^2)
result = fixedpoint(g, p0, e, n0)
println(result)
println("________________________")
