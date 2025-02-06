function x = rnd_cauchy(location_parameter, scale_parameter)
p_cdf = rand(); %uniform random from 0->1, since cdf by definition 0->1
x = location_parameter + scale_parameter*tan(pi*(p_cdf-0.5)); %solve cdf eqn for x


