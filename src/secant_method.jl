"""
    secant(x0, x1, f, e, n)

Compute the root of the given function using Secant method, an Extension of Newton's method.
Insted of using a tangent line, which requres knoledge of the function's derivative, Secant method uses two values of
the initial approximation `x0` and `x1` to find secant line and uses the intersection of the secant line and x-axis
to find the next approximation.

    secant(x0::Float64, x1::Float64, f::Function, e::Float64, n::Integer)

### OUTPUT:
  * `p` - approximation of the root of the function `f` (Float64) or,
  * `-1` - if `n` the maximum number of iterations was exceeded.
"""
function secant(x0::Float64, x1::Float64, f::Function, e::Float64, n::Integer)
    
    f0 = f(x0)
    f1 = f(x1)
    
    for i in 1:n
        
        x = x1 - f1*(x1-x0)/(f1 - f0)
        fx = f(x)
        x0 = x1
        x1 = x
        f0 = f1
        f1 = fx
        
        if(abs(x1 - x0) < e)
            return x1
        end
    end

    return -1
end
