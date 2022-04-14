function hermit(X::Array{Float64}, Y::Array{Float64}, Yp::Array{Float64})
    n = length(X)
    Z = zeros(n*2)
    Q = zeros(2*n+1, 2*n+1)
    for i in 1:n
        Z[2*i-1] = X[i]
        Z[2*i] = X[i]
        Q[2*i-1, 1] = Y[i]
        Q[2*i, 1] = Y[i]
        Q[2*i, 2] = Yp[i]

        if i > 1
            Q[2*i, 2] = (Q[2*i, 1] - Q[2*i-1, 1])/(Z[2*i] - Z[2*i-1])
        end
    end

    for i in 3:2*n+2
        for j in 3:i
            Q[i, j] = (Q[i, j-1] - Q[i-1, j-1])/(Z[i] - Z[(i+1)-j])
        end
    end

    P = []

    for i in i:2*n+1
        push!(P, Q[i, i])
    end

    return P
end