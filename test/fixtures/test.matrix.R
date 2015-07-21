options( digits = 16 )
library( jsonlite )
library( FAdist )

mu = 0
beta = 4
x = 0:24
y = pgumbel( x, beta, mu )

cat( y, sep = ",\n" )

data = list(
	mu = mu,
	beta = beta,
	data = x,
	expected = y
)


write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/matrix.json" )
