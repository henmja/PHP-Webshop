create table products (
Store_Product_ID int not null, primary key(Store_Product_ID));

alter table products add Navn varchar(255);

alter table products add Description varchar(255);

alter table products add Normal_Price int;

alter table products add Bonus_Price int;

alter table products add image varchar(255);


INSERT INTO `products` (`Store_Product_ID`, `Navn`, `Description`, `Normal_Price`, `Bonus_Price`, `image`) VALUES
(1, 'Scuderia Ferrari Team T-Shirt Red', 'The Scuderia Ferrari Team T-shirt is the official replica of the item of clothing worn by the men of the Maranello team on the World F1 2014 race tracks, including the logo of the Team and of all the sponsors.\r\nThe unique details thus characterise this item of clothing such as the inserts in contrasting colour, the embroidered Puma logo and the design of the three-colour Italian flag on the right sleeve.\r\n\r\n100% Cotton', 120, 96, '<img src="http://www3.ux.uis.no/~henrikm/dat310-webshop/images/ferrari_Tshirt.png">'),
(2, 'Mercedes AMG Petronas Lewis Hamilton 2014 World Champion T-Shirt', '', 48, 48, '<img src="http://www3.ux.uis.no/~henrikm/dat310-webshop/images/mercedes_Tshirt.png">'),
(3, 'Lotus F1 Team Replica Rain Jacket', '', 194, 136, '<img src="http://www3.ux.uis.no/~henrikm/dat310-webshop/images/lotus_jacket.png">'),
(4, 'Scuderia Ferrari Raikkonen Driver Cap', '', 48, 16, '<img src="http://www3.ux.uis.no/~henrikm/dat310-webshop/images/ferrari_cap.png">'),
(5, 'Scuderia Ferrari Beanie', '', 40, 32, '<img src="http://www3.ux.uis.no/~henrikm/dat310-webshop/images/ferrari_beanie.png">'),
(6, 'Mercedes AMG Petronas Rosberg Driver Cap', '', 48, 24, '<img src="http://www3.ux.uis.no/~henrikm/dat310-webshop/images/mercedes_cap.png">');
