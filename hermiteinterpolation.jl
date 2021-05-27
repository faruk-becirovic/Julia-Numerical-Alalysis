function hermite(x::Array, f::Array, g::Array, n)
    z::Array(undef, 2*n+1)
    Q = zeros(2*n+1, 2*n+1)
    for i in x
        z[2*i] = x[i]
        z[2*i+1] = x[i]
        Q[2*i,1] = f[i]
        Q[2*i+1,1] = f[i]
        Q[2*i+1,2] = g[i]
        if i != 1
            Q[2*i,2] = (Q[2*i,1] - Q[2*i-1,1])/(z[2*i]-z[2*i-1])
        end
    end
    for i in z
        for j in 1:i
            Q[i,j] = (Q[i,j-1] - Q[i-1,j-1])/(z[i] - z[i-j])
        end
    end
    r::Array(undef, 2*n+1)
    for i in r
        r[i] = Q[i,i]
    end
    return r
end
