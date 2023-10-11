const multer = require("multer");
const path = require("path");
const { Product, User } = require("../models");

const storage = multer.diskStorage({
	destination: (req, file, cb) => {
		cb(null, "uploads/images/products");
	},
	filename: (req, file, cb) => {
		const fileName = `${Date.now()}${path.extname(file.originalname)}`;
		cb(null, fileName);
	},
});

const upload = multer({ storage });

async function getAllProducts(req, res) {
	try {
		const products = await Product.findAll({
			include: {
				model: User,
				as: "user",
				attributes: { exclude: ["password", "email", "id"] },
			},
			attributes: { exclude: ["userId"] },
		});
		return res.status(200).json({
			status: "true",
			result: products.map((product) => ({
				...product.toJSON(),
				image_url: `http://localhost:3000/uploads/images/products/${product.image}`,
			})),
		});
	} catch (error) {
		console.error(error);
		res.status(500).json({ message: "Internal server error" });
	}
}

async function addProduct(req, res) {
	try {
		const { title, description, price } = req.body;
		const image = req.file.filename;
		const userId = req.user.id;

		const newProduct = await Product.create({
			title,
			image,
			description,
			price,
			userId,
		});

		res.status(201).json({
			status: true,
			result: newProduct,
		});
	} catch (error) {
		console.error(error);
		res.status(500).json({ message: "Internal server error" });
	}
}

module.exports = { getAllProducts, addProduct, upload };
