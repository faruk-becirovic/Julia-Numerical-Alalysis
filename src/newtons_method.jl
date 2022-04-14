"""
    newton(f, fprime, x0, e, n)

Compute the root of the given function using Newton's method.
Uses the point at which tangent line intersects x-axis to find the next approximate of the root of function 'f', 
as such it requires initial approximation `x0` and `fprime`, the derivative of function `f`.
Newton's method has very fast convergence provided a sufficiantly accurate initial approximation is chosen.

    newton(f::Function, fprime::Function, x0::Float64, e::Float64, n::Integer)

### OUTPUT:
  * `p` - approximation of the root of the function `f` (Float64) or,
  * `-1` - if `n` the maximum number of iterations was exceeded.
"""
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
