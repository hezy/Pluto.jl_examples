using Plots

rand_steps(n) = sum(rand((-1,1)) for t in 1:n)

make_array(m, n) = [rand_steps(n) for t in 1:m]

arr = make_array(10000, 10000)

#plot(arr)

y(x) = 2000/sqrt(2pi) * exp(-x^2/21000)

b_range = range(-400, 400, length=41)
histogram(arr, bins=b_range)
plot!(y, -400, 400, label="Analytical", lw=2, color=:white)