f(a, b, c) = sqrt(b^2-4*a*c)
a = 1
b = -100.0001
c = 0.01
x1 = (-b + f(a, b, c)) / 2
x2 = (-b - f(a, b, c)) / 2
x22 = (2*c)/(-b + f(a, b, c))
println("x1= ", x1)
println("x2= ", x2, " x2= ", x22)
