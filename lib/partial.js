'use strict';

// FUNCTIONS //

var exp = Math.exp;


// PARTIAL //

/**
* FUNCTION: partial( mu, beta )
*	Partially applies location parameter `mu` and scale parameter `beta` and returns a function for evaluating the cumulative distribution function (CDF) for a Gumbel distribution.
*
* @param {Number} mu - location parameter
* @param {Number} beta - scale parameter
* @returns {Function} CDF
*/
function partial( mu, beta ) {

	/**
	* FUNCTION: cdf( x )
	*	Evaluates the cumulative distribution function (CDF) for a Gumbel distribution.
	*
	* @private
	* @param {Number} x - input value
	* @returns {Number} evaluated CDF
	*/
	return function cdf( x ) {
		var z = ( x - mu ) / beta;
		return exp( -exp( -z ) );
	};
} // end FUNCTION partial()


// EXPORTS //

module.exports = partial;
