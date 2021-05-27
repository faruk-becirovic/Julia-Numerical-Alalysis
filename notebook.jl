### A Pluto.jl notebook ###
# v0.14.4

using Markdown
using InteractiveUtils

# ╔═╡ 9d83ad5e-5ae9-40ed-b049-67923de86bcb
using PlutoUI

# ╔═╡ 9f949eea-b646-48ef-8077-5d6871f39ba7
using Plots

# ╔═╡ b166dd14-510a-42a9-85df-6b09e862c8a6
using Polynomials

# ╔═╡ 086da8df-7ba3-43d0-8255-39ac05e49c34
using LaTeXStrings

# ╔═╡ f02ab99a-a18e-4dfc-85f1-012c2f0ef721
begin
	x = [-1, 1, 2]
	yx = [-6, 0, 6]
end

# ╔═╡ 1511462d-4dbb-4daf-9250-e91199e3c62b
scatter(x, yx, label = false)

# ╔═╡ 218bd8d8-c82b-4dce-b723-bf059c1bfccd
A = [[1, -1, 1: 1, 1, 1: 1, 2, 4]]

# ╔═╡ aff2adfe-d4e1-4036-b251-a33f1c1143b3
#A\yx

# ╔═╡ 2d25a20e-e2f2-4cae-a91e-6ddca828061e


# ╔═╡ Cell order:
# ╠═9d83ad5e-5ae9-40ed-b049-67923de86bcb
# ╠═9f949eea-b646-48ef-8077-5d6871f39ba7
# ╠═b166dd14-510a-42a9-85df-6b09e862c8a6
# ╠═086da8df-7ba3-43d0-8255-39ac05e49c34
# ╠═f02ab99a-a18e-4dfc-85f1-012c2f0ef721
# ╠═1511462d-4dbb-4daf-9250-e91199e3c62b
# ╠═218bd8d8-c82b-4dce-b723-bf059c1bfccd
# ╠═aff2adfe-d4e1-4036-b251-a33f1c1143b3
# ╠═2d25a20e-e2f2-4cae-a91e-6ddca828061e
