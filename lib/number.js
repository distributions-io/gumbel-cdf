'use strict';

// FUNCTIONS //

var exp = Math.exp;


// CDF //

/**
* FUNCTION: cdf( x, mu, beta )
*	Evaluates the cumulative distribution function (CDF) for a Gumbel distribution with location parameter `mu` and scale parameter `beta` at a value `x`.
*
* @param {Number} x - input value
* @param {Number} mu - location parameter
* @param {Number} beta - scale parameter
* @returns {Number} evaluated CDF
*/
function cdf( x, mu, beta ) {
	var z = ( x - mu ) / beta;
	return exp( -exp( -z ) );
} // end FUNCTION cdf()


// EXPORTS //

module.exports = cdf;
