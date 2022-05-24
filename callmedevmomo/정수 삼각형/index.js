const dp = (n, triangle) => {
	if (n === 1) return triangle[0][0];
	else if (n === 2) return triangle[0][0] + Math.max(...triangle[1]);
	for (let i = n - 2; i >= 0; i--) {
		triangle[i].forEach((el, idx, arr) => {
			arr[idx] = el + Math.max(triangle[i + 1][idx], triangle[i + 1][idx + 1]);
		});
	}
	return triangle[0][0];
};

const [n, ...triangle] = require("fs").readFileSync("/dev/stdin").toString().trim().split("\n");
triangle.forEach((el, idx, arr) => (arr[idx] = el.split(" ").map((el2) => +el2)));
console.log(dp(+n, triangle));
