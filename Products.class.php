<?php
/**
 * Products class
 */
class Products {
    function __construct() {
        // TODO initialize database connection
        //$mysqli=mysqli_connect('localhost','root','root','products');
    }
    /**
     * Returns a given product
     *
     * @param $product_id
     * @return product properties in an associative array
     */
    function loadProduct($product_id) {
        // TODO load product info from the database
        // this is just some example data for testing
        // $mysqli=mysqli_connect('localhost','root','root','products');
        $mysqli=mysqli_connect('mysql.ux.uis.no','henrikm','bscr5ujv','dbhenrikm');
	if (!$mysqli)
		die("Can't connect to MySQL: ".mysqli_connect_error());
	$stmt = $mysqli->prepare("SELECT * FROM products WHERE Store_Product_ID=?");
	$stmt->bind_param("i", $product_id);
	$stmt->execute();
	$stmt->store_result();
	$stmt->bind_result($pk, $navn, $desc, $norm, $bonus, $image);
	$stmt->fetch();
          return array(
            'product_id' => $pk,
            'name' => $navn,
            'description' => $desc,
            'price' => $norm,
            'bonus_price' => $bonus,
            'image' => $image
        );
    }
    /**
     * Returns all products
     *
     * @return products in an array
     */
    function listProducts() {
        // TODO load products from the database
        // this is just some example data for testing
        $p1 = $this->loadProduct(1);
        $p2 = $this->loadProduct(2);
        $p3 = $this->loadProduct(3);
        $p4 = $this->loadProduct(4);
        $p5 = $this->loadProduct(5);
        $p6 = $this->loadProduct(6);
        return array($p1, $p2, $p3, $p4, $p5, $p6);
    }
} 
