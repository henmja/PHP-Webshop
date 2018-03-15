<!DOCTYPE html>
<html>
<head>
    <title>Assignment 3 | shopping cart</title>
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

    <section id="cart">
        <h2>Shopping cart</h2>


        <table>




            <thead>
            <tr>
                <th colspan="2" class="name">Item</th>
                <th>Item price</th>
                <th>Quantity</th>
                <th>Price </th>
            </tr>
            </thead>
            <tbody>

            {foreach $products as $product}
            {if $product.bonus_price==0}
            {$product.bonus_price=$product.price}
            {/if}
            <tr class="item">
                <td class="preview">{$product.image}</td>
                <td class="name">{$product.name}</td>
                <td>{$product.price}</td>
                <td>{$product.qt} <i class="fa fa-pencil"></i><i class="fa fa-trash-o"></i></td>
                <td>{$product.bonus_price}</td>
            </tr>
            {/foreach}
            <tr class="total">
                <td colspan="4" class="name">Total</td>

                <td>
                {$total = 0}
                {foreach $products as $product}
                {if $product.bonus_price==0}
                {$product.bonus_price=$product.price}
                {/if}
                {$total= $total+ ($product.bonus_price*$product.qt)}
                {/foreach}

                {$total}
                </td>

            </tr>

            </tbody>
        </table>

        <div class="spacetop">
            Click here to proceed to the checkout step.
            <div class="right">
                <a href="#" class="button"><i class="fa fa-truck"></i> Checkout</a>
            </div>
        </div>
    </section>

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
