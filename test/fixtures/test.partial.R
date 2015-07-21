options( digits = 16 )
library( jsonlite )
library( FAdist )

mu = 0
beta = 1
x = c( -5, -2.5, 0, 2.5, 5 )
y = pgumbel( x, beta, mu )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/partial.json" )
