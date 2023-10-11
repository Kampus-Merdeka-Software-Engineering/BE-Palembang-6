const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const { register, login } = require("./controllers/authController");
const { getUserProfile } = require("./controllers/userController");
const {
	getAllProducts,
	addProduct,
	upload,
} = require("./controllers/productController");
const { authorize } = require("./middleware/authMiddleware");

const app = express();
const port = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use("/uploads", express.static("uploads"));
app.use(
	cors({
		origin: "*",
	})
);

app.get("/", (req, res) => {
	return res.send("scant rest api");
});

// Register route
app.post("/api/register", register);

// Login route
app.post("/api/login", login);

// get user data
app.get("/api/user", authorize, getUserProfile);

// get all product
app.get("/api/products", getAllProducts);

// add new product
app.post("/api/products", authorize, upload.single("image"), addProduct);

app.listen(port, () => {
	console.log(`Server is running on port ${port}`);
});
