"""
    bisect(a, b, f, e, n)

Compute the root of the given function using Bisection method.
Uses midpoint of the interval `[a, b]`, replacing one of the endpoinds with 
midpoint depending on the location of the root in relation to the midpoint and repeting the process
untill the approximation `p` of the root of the function `f` is found within the specified error margin.

    bisect(a::Integer, b:Integer, f::Function, e::Float64, n::Integer)

### OUTPUT:
  * `p` - approximation of the root of the function `f` (Float64) or,
  * `-1` - if `n` the maximum number of iterations was exceeded.
"""
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