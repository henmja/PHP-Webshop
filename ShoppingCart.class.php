<?php
/**
 * Shopping cart class
 */
class ShoppingCart {
    private $products;
    function __construct() {
        if (isset($_SESSION['products'])) {
            $this->products = $_SESSION['products'];
        }
        else {
            $this->products = array();
        }
    }
    function addProduct($product_id, $qt) {
        //echo "Adding " . $product_id . " x " . $qt . "<br>";
        $old_qt = 0;
        if (array_key_exists($product_id, $this->products)) {
            $old_qt = $this->products[$product_id];
        }
        $this->products[$product_id] = $old_qt + $qt;
        $_SESSION['products'] = $this->products;
    }
    function removeProduct($product_id) {
        //echo "Removing " . $product_id . "<br>";
        if (array_key_exists($product_id, $this->products)) {
            unset($this->products[$product_id]);
        }
        $_SESSION['products'] = $this->products;
    }
    function getContents() {
        return $this->products;
    }
    function listProducts() {
        echo "Listing products" . "<br>";
        foreach ($this->products as $product_id => $qt) {
            echo $product_id . " x " . $qt . "<br>";
        }
    }
}
