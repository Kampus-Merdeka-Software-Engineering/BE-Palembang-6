const { User } = require("../models");

async function getUserProfile(req, res) {
	try {
		const response = await User.findOne({
			where: {
				id: req.user.id,
			},
			attributes: {
				exclude: ["id", "password"],
			},
		});

		return res.status(200).json({
			result: response,
		});
	} catch (error) {
		console.error(error);
		res.status(500).json({ message: "Internal server error" });
	}
}

module.exports = { getUserProfile };
