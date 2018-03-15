{include file="header.tpl"}

<!DOCTYPE html>
<html>
<head>
    <title>Assignment 3 | main page</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css"/>
</head>
<body>

<header>


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
    <div id="banner">
        <h2>End-of-season sales 20-70%</h2>

        <h3>Check out our special offers!</h3>
    </div>
    
    Listing products:
<ul>
{foreach $products as $product}
{if $product.bonus_price==0}
            {$product.bonus_price=$product.price}
            {/if}
<li>[ID: <a href="index.php?page=product&product_id={$product.product_id}">{$product.product_id}</a>] {$product.name} ({$product.bonus_price})</li>
{/foreach}
</ul>
    {foreach $products as $product}
    {if $product.bonus_price==0}
            {$product.bonus_price=$product.price}
            {/if}
    <article class="preview">

        {$product.image}

        <h3>{$product.name}</h3>

        <div class="price"><s>${$product.price}</s> <span class="sale">${$product.bonus_price}</span></div>
        <div class="sale">-{100-($product.bonus_price/$product.price)*100}%</div>
    </article>
    {/foreach}


</main>

<footer>

    <div class="contact">
        <span class="strong">Customer service:</span> <br />
        +47 321 09 87654 <br />
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
{include file="footer.tpl"}
