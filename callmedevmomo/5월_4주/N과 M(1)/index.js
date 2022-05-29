const fs = require("fs");
const input = fs
	.readFileSync("/dev/stdin")
	.toString()
	.trim()
	.split(" ")
	.map((v) => +v);

const N = input[0];
const M = input[1];
const arr = [];

for (let i = 1; i <= N; i++) {
	arr.push(String(i));
}

function solve(cnt, used, val) {
	if (cnt == M) {
		console.log(val);
		return false;
	} else {
		for (let i = 0; i < N; i++) {
			if (used & (1 << i)) continue;
			solve(cnt + 1, used | (1 << i), val + arr[i] + " ");
		}
	}
}

solve(0, 0, "");
