function getPolynomial(X, Y)
    n = length(Y)
    p = string("P = x -> ", Y[1])
    for i::Int in 2:n
        P = string(p, " + ", Y[i])
        for j in 1:i-1
            p = string(p, "*(x-", X[j], ")")
        end
    end
    return eval(Meta.parse(p))
end

function getCoefficients(X, Y)
  
    n = length(X)
   
    for i::Int in 2:n
        for j::Int in 2:i
            Y[i, j] = (Y[i, j-1] - Y[i-1, j-1])/(X[i] - X[i-j+1])
        end
    end

    F = []

    for i in 1:n
        push!(F, Y[i, i])
    end

    return F
end

function divid(X::Array{Float64}, Y::Array{Float64}, cff::Bool=true)
    if cff
        return getCoefficients(X, Y)
    else
        return getPolynomial(X, Y)
    end
end
