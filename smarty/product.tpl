<!DOCTYPE html>
<html>
<head>
    <title>Assignment 3 | product page</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css"/>
</head>
<body>

<header>
{include file="header.tpl"}
    <h1>The unofficial Formula-1 webshop</h1>
    <nav>
        <ul>
            <li><a href="#">Categories</a></li>
            <li><a href="#">Special deals</a></li>
            <li><a href="#">Wishlist</a></li>
            <li><a href="#">Shopping cart</a></li>
        </ul>
    </nav>
</header>

<main>
<form action="index.php" method="POST">
<input type="hidden" name="page" value="add_to_cart" />
<input type="hidden" name="product_id" value="{$product.product_id}" />
<input type="hidden" name="qt" value="1" />
<input type="submit" value="Add to shopping cart" />
</form>


    <article class="product">
        <div class="image">

            
            <table width="100%" border="0" cellpadding="5">
<tr valign="top">
<td> 

{$product.image}
</td>
</tr>
</table>

        <div class="details">
            <h3>{$product.name}</h3>

            <p>{$product.description}</p>

            <div class="price"> Sale -{100-($product.bonus_price/$product.price)*100}%: <br/> <s>{$product.price}.00$</s> <span class="sale">{$product.bonus_price}.00$</span></div>
            <a href="#" class="button"><i class="fa fa-shopping-cart"></i> Add to cart</a>
        </div>
    </article>

</main>

<footer>
{include file="footer.tpl"}
    <div class="contact">
        <span class="strong">Customer service:</span> <br/>
        +47 321 09 87654 <br/>
        <a href="#">info@f1webshop.com</a>
    </div>

    <div class="contact">
        <a href="#"><i class="fa fa-facebook-square fa-3x"></i></a>
        <a href="#"><i class="fa fa-twitter-square fa-3x"></i></a>
        <a href="#"><i class="fa fa-google-plus-square fa-3x"></i></a>
        <a href="#"><i class="fa fa-youtube fa-3x"></i></a>
    </div>

</footer>

</body>
</html>

</html>
