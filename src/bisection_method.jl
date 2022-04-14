function bisect(a::Integer, b:Integer, f::Function, e::Float64, n::Integer)

    Ap = []
    
    for i in 1:n
        
        p = a + 0.5*(b-a)
        ei = (b-a)/2
        push!(Ap, p)

        if sign(f(a))*sign(f(p)) < 0
            b = p
        else
            a = p
        end

        if ei < e
            return Ap
        end
    end

    return -1
end