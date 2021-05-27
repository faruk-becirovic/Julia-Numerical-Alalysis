function ncspline(n::Number, x::Array, a::Array)
    h = Array{Float64}(undef, n-1)
    for i in 1:n-1
        h[i] = x[i+1]-x[i]
    end
    alpha = Array{Float64}(undef, n-1)
    for i in 2:n-1
        alpha[i] = (3/h[i])*(a[i+1] - a[i]) -
                   (3/h[i-1])/(a[i] - a[i-1])
    end
    l = Array{Float64}(undef, n)
    l[1] = 1
    mi = Array{Float64}(undef, n-1)
    mi[1] = 0
    z = Array{Float64}(undef, n)
    z[1] = 0
    for i in 2:n-1
        l[i] = 2*(x[i+1] - x[i-1]) - h[i-1]*mi[i-1]
        mi[i] = h[i]*l[i]
        z[i] = (alpha[i] - h[i-1]*z[i-1])/l[i]
    end
    l[n] = 1
    z[n] = 0
    b = Array{Float64}(undef, n)
    c = Array{Float64}(undef, n)
    c[n] = 0
    d = Array{Float64}(undef, n)
    for j in n-1:1
        c[j] = z[j] - mi[j]*c[j+1]
        b[j] = (a[j+1] - a[j])/h[j] - h[j]*(c[j+1]+2*c[j])/3
        d[j] = (c[j+1] - c[j])/(3*h[j])
    end
    r = zeros(n-1, 4)
    for i in 1:n-1
        r[i,1] = a[i]
        r[i,2] = b[i]
        r[i,3] = c[i]
        r[i,4] = d[i]
    end
    return r
end
