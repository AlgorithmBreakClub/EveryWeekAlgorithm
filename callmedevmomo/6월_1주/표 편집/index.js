function solution(n, k, cmds) {
	const nodes = Array.from({ length: n }, (_, idx) => {
		return {
			value: true,
			prev: idx - 1,
			next: idx + 1,
			idx: idx,
		};
	});
	nodes[0].prev = null;
	nodes[n - 1].next = null;

	let cursor = nodes[k];

	const stack = [];

	cmds.forEach((cmd) => {
		const [keyword, x] = cmd.split(" ");
		const number = +x;

		switch (keyword) {
			case "U":
				for (let i = 0; i < number; i++) {
					cursor = nodes[cursor.prev];
				}
				break;
			case "D":
				for (let i = 0; i < number; i++) {
					cursor = nodes[cursor.next];
				}
				break;
			case "C":
				cursor.value = false;
				stack.push(cursor);
				if (cursor.prev !== null) {
					nodes[cursor.prev].next = cursor.next;
				}
				if (cursor.next !== null) {
					nodes[cursor.next].prev = cursor.prev;
				}

				if (cursor.next !== null) {
					cursor = nodes[cursor.next];
				} else {
					cursor = nodes[cursor.prev];
				}
				break;
			case "Z":
				const target = stack.pop();
				target.value = true;
				if (target.prev !== null) {
					nodes[target.prev].next = target.idx;
				}
				if (target.next !== null) {
					nodes[target.next].prev = target.idx;
				}
				break;
		}
	});

	return Array.from(nodes, ({ value }) => (value ? "O" : "X")).join("");
}
