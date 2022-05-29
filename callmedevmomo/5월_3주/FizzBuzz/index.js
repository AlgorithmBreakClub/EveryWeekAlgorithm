var fizzBuzz = function (n) {
	let r = [];
	for (let i = 1; i <= n; i++) {
		if (i % 3 === 0 && i % 5 === 0) {
			r.push("FizzBuzz");
		} else if (i % 5 === 0) {
			r.push("Buzz");
		} else if (i % 3 === 0) {
			r.push("Fizz");
		} else {
			r.push(i + "");
		}
	}
	return r;
};
