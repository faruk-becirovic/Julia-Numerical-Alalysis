function newton(f::Function, fprime::Function, x0::Float64, e::Float64, n::Integer)

    Afx = []
    
    for i in 1:n

        yprime = fprime(x0)
        
        if abs(yprime) < e
            warn("First derivative is zero")
            return x0
        end
        
        y = f(x0)
        x1 = x0 - y / yprime
        push!(Afx, f(x1))
        
        if abs(x1 - x0) < e
            return x1
        end
        
        x0 = x1
    end

    return -1
end
