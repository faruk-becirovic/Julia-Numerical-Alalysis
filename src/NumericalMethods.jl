module NumericalMethods

include("bisection_method.jl")
include("divided_difference.jl")
include("hermite_interpolation.jl")
include("newtons_method.jl")
include("secant_method.jl")

export bisect
export newton
export secant
export divid
export hermit

end
