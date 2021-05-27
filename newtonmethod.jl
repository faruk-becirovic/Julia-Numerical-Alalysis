function newton(p0::Number, tol::AbstractFloat, n0::Integer, 
                f::Function, g::Funtion)
    i = 1
    while i <= n0
        p = p0 - f(p0)/g(p0)
        if p-p0 < tol
            return p
        end
        i = i++
        p0 = p
    end
    error("Maximum itteration exceeded")
end
