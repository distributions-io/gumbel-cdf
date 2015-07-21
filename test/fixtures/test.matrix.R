options( digits = 16 )
library( jsonlite )

mu = 0
beta = 1
x = 0:24
y = pgumbel( x, mu, beta )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = x,
	expected = y
)


write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/matrix.json" )
