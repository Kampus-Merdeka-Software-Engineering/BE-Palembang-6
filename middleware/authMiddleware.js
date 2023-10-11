const jwt = require("jsonwebtoken");

const authorize = (req, res, next) => {
	const token = req.headers.authorization;

	console.log("topken", token);
	if (!token) {
		return res.status(401).json({ message: "Unauthorized" });
	}

	const secretKey = "ini rahasia";
	const key = token.split(" ")[1];

	console.log(key);

	jwt.verify(key, secretKey, (err, user) => {
		if (err) {
			return res.status(403).json({ message: "Token Invalid" });
		}

		req.user = user;
		next();
	});
};

module.exports = {
	authorize,
};
