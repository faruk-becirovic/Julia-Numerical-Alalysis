function secant(p0::Number, p1::Number, tol::AbstractFloat,
                n0::Integer, f::Function)
    i = 2
    q0 = f(p0)
    q1 = f(p1)
    while i<=n0
        p = p1 - q1*(p1-p0)/(q1-q0)
        if p-p0 < tol
            return p
        end
        i = i++
        p0 = p1
        p1 = p
        q0 = q1
        p1 = p
        q1 = f(p)
    end
    error("Maximum itteration exceeded")
end
