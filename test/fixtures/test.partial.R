options( digits = 16 )
library( jsonlite )

mu = 0
beta = 1
x = c( -5, -2.5, 0, 2.5, 5 )
y = pgumbel( x, mu, beta )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/partial.json" )
