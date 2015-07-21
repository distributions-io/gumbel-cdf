options( digits = 16 )
library( jsonlite )

mu = 0
beta = 1
x = seq( -1000, 1000, 0.5 )
y = pgumbel( x, mu, beta )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = x,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/accessor.json" )
