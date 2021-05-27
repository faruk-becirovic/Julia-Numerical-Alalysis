function euler(f::Function, x::Integer, y::Integer, n::Integer, xn::Integer)
    h = (y - a)/n
    t = a
    yn = xn
    for i in 1:n
        yn = yn + h*f(t, yn)
        t = a + i*h
    end
    return [t, yn]
end
