import 'package:squee_steak_flutter/model/category.dart';
import 'package:squee_steak_flutter/model/menu.dart';
import 'package:squee_steak_flutter/util/constants.dart';

var listCategory = [
  Category(
      id: 1,
      name: 'Steaks',
      urlPhoto: 'assets/icons/icons_steaks.png',
      backgroundColor: colorSalmon
  ),
  Category(
      id: 2, name: 'Side Dishes',
      urlPhoto: 'assets/icons/icons_side_dish.png',
      backgroundColor: colorSoftBrown
  ),
  Category(
      id: 3, name: 'Drinks',
      urlPhoto: 'assets/icons/icons_drinks.png',
      backgroundColor: colorSoftCream2
  ),
  Category(
      id: 4, name: 'Recommended',
      urlPhoto: 'assets/icons/icons_chef_hat.png',
      backgroundColor: colorBabyBlue3
  ),
  Category(
      id: 5, name: 'Top Sellers',
      urlPhoto: 'assets/icons/icons_top_seller.png',
      backgroundColor: colorSoftBlue
  ),
];

var listMenuDummy = [
  Menu(id: 1, category: listCategory[0], name: 'Tornado steak ', rating: 4, price: 93000, urlPhoto: 'assets/steaks/steaks_tornado_steak.jpg', description: ' Steak lulur dalam dililit smoked beef'),
  Menu(id: 2, category: listCategory[0], name: 'OX Tongue Steak', rating: 4, price: 93000, urlPhoto: 'assets/steaks/steaks_ox_tongue_steak.jpg', description: 'Steak lidah'),
  Menu(id: 3, category: listCategory[0], name: 'Medallion Steak', rating: 5, price: 88000, urlPhoto: 'assets/steaks/steaks_medallion_steak.jpg', description: 'Steak daging cincang dengan keju dan smoked beef'),
  Menu(id: 4, category: listCategory[0], name: 'Mozarella Beef Roll', rating: 4, price: 102000, urlPhoto: 'assets/steaks/steaks_mozarella-beef_roll.jpg', description: 'Steak lulur dalam dengan isian mozzarella'),
  Menu(id: 5, category: listCategory[0], name: 'Galantine Telur', rating: 4, price: 83000, urlPhoto: 'assets/steaks/steaks_galantine_telur.jpg', description: 'Daging cincang roll lapis telur disajikan dengan saus special'),
  Menu(id: 6, category: listCategory[0], name: 'Tenderloin Steak', rating: 4, price: 96000, urlPhoto: 'assets/steaks/steaks_tenderloin_steak.jpeg', description: 'Steak lulur dalam'),
  Menu(id: 7, category: listCategory[0], name: 'Grilled Sirloin Steak', rating: 5, price: 90000, urlPhoto: 'assets/steaks/steaks_grilled_sirloin_steak.jpeg', description: 'Steak lulur luar dipanggang dengan taburan merica hitam'),
  Menu(id: 8, category: listCategory[0], name: 'Grilled Tenderloin Steak', rating: 5, price: 140000, urlPhoto: 'assets/steaks/steaks_grilled_tenderloin_steak.jpeg', description: 'Steak lulur dalam dipanggang dengan taburan merica hitam'),
  Menu(id: 9, category: listCategory[0], name: 'Rib Eye Premium', rating: 5, price: 126000, urlPhoto: 'assets/steaks/steaks_rib_eye_premium.jpeg', description: 'Steak iga sapi tanpa tulang dipanggang dengan taburan merica hitam'),
  Menu(id: 10, category: listCategory[0], name: 'Chicken Roulade', rating: 3, price: 70000, urlPhoto: 'assets/steaks/steaks_chicken_roulade.jpg', description: 'Roll ayam cincang isi sosis lapis mozarella digoreng tepung roti disajikan dengan kroket kentang'),
  Menu(id: 11, category: listCategory[0], name: 'Spring Chicken', rating: 4, price: 95000, urlPhoto: 'assets/steaks/steaks_spring_chicken.jpeg', description: 'Steak ayam muda dibakar dengan brandy'),
  Menu(id: 12, category: listCategory[0], name: 'Chicken Steak', rating: 4, price: 72000, urlPhoto: 'assets/steaks/steaks_chicken_steak.jpeg', description: 'Steak ayam'),
  Menu(id: 13, category: listCategory[0], name: 'White Fish', rating: 5, price: 90000, urlPhoto: 'assets/steaks/steaks_white_fish.jpg', description: 'Steak ikan dori dipanggang bumbu merah'),
  Menu(id: 14, category: listCategory[0], name: 'Spicy Barbeque Fish', rating: 3, price: 74000, urlPhoto: 'assets/steaks/steaks_spicy_barbeque_fish.jpg', description: 'Steak ikan tengiri dipanggang bumbu pedas'),
  Menu(id: 15, category: listCategory[0], name: 'Salmon in Flames', rating: 5, price: 130000, urlPhoto: 'assets/steaks/steaks_salmon_in_flame.jpeg', description: 'Steak ikan salmon dibakar dengan brandy'),
  Menu(id: 16, category: listCategory[0], name: 'Spicy Lamb Steak', rating: 4, price: 90000, urlPhoto: 'assets/steaks/steaks_spicy_lamb_steak.jpeg', description: 'Steak daging kambing dengan bumbu pedas'),
  Menu(id: 17, category: listCategory[0], name: 'Tokyo Rice Steak', rating: 3, price: 90000, urlPhoto: 'assets/steaks/steaks_tokyo_rice_steak.jpg', description: 'Nasi steak sapi spesial bumbu khas Jepang disajikan dengan sup miso'),
  Menu(id: 18, category: listCategory[0], name: 'Seoul Rice Steak', rating: 3, price: 90000, urlPhoto: 'assets/steaks/steaks_seoul_rice_steak.jpg', description: 'Nasi steak sapi spesial bumbu khas Korea disajikan dengan sup miso'),
  Menu(id: 19, category: listCategory[0], name: 'Bangkok Rice Steak', rating: 3, price: 90000, urlPhoto: 'assets/steaks/steaks_bangkok_rice_steak.jpeg', description: 'Nasi steak sapi spesial bumbu khas Thailand disajikan dengan sup miso'),
  Menu(id: 20, category: listCategory[0], name: 'Chicken Teriyaki Rice Steak', rating: 2, price: 65000, urlPhoto: 'assets/steaks/steaks_teriyaki_rice_steak.jpg', description: 'Daging ayam dengan saus teriyaki disajikan dengan nasi putih'),
  Menu(id: 21, category: listCategory[0], name: 'Shish Kebab', rating: 2, price: 70000, urlPhoto: 'assets/steaks/steaks_shish_kebab.jpeg', description: 'Tusukan kombinasi daging, ayam, sosis dan ham beef dibakar dengan brandy'),
  Menu(id: 22, category: listCategory[1], name: 'Crispy Fried Chicken Skin', rating: 3, price: 30000, urlPhoto: 'assets/sidedishes/side_dishes_crispy_chicken_skin.jpeg', description: 'Keripik kulit ayam dengan saus spesial Squee Steak'),
  Menu(id: 23, category: listCategory[1], name: 'Chicken Risolles', rating: 3, price: 30000, urlPhoto: 'assets/sidedishes/side_dishes_risolles.jpeg', description: 'Risoles berisi daging ayam cincang dan sayuran'),
  Menu(id: 24, category: listCategory[1], name: 'Corn with Butter and Cheese', rating: 3, price: 30000, urlPhoto: 'assets/sidedishes/side_dishes_corn_butter_cheese.jpg', description: 'Jagung manis dengan butter dan keju'),
  Menu(id: 25, category: listCategory[1], name: 'Chicken Wings', rating: 5, price: 80000, urlPhoto: 'assets/sidedishes/side_dishes_chicken_wings.jpeg', description: 'Sayap ayam Japanese Style'),
  Menu(id: 26, category: listCategory[1], name: 'Crispy Pastry Soup', rating: 4, price: 49000, urlPhoto: 'assets/sidedishes/side_dishes_crispy_pastry_soup.jpeg', description: 'Sup krim dengan ayam, jamur, sosis dan kacang polong dengan topping pastry'),
  Menu(id: 27, category: listCategory[1], name: 'Tomato Soup', rating: 4, price: 37000, urlPhoto: 'assets/sidedishes/side_dishes_tomato_soup.jpeg', description: 'Sup tomat dengan ayam, wortel, lidah sapi, sosis, dan kacang polong'),
  Menu(id: 28, category: listCategory[1], name: 'Crabmeat Soup', rating: 4, price: 47000, urlPhoto: 'assets/sidedishes/side_dishes_crabmeat_soup.jpg', description: 'Sup kepiting bening dengan jagung dan asparagus'),
  Menu(id: 29, category: listCategory[1], name: 'Salmon Salad', rating: 5, price: 87000, urlPhoto: 'assets/sidedishes/side_dishes_salmon_salad.jpg', description: 'Salad lettuce, kol ungu, wortel, jagung, tomat, bombay dan salmon asap dengan dressing thousand island'),
  Menu(id: 30, category: listCategory[1], name: 'Chef\'s Salad', rating: 5, price: 84000, urlPhoto: 'assets/sidedishes/side_dishes_chef_salad.jpg', description: 'Salad lettuce, kol ungu, wortel, jagung, tomat, bombay, daging, ayam, sosis, dan udang dengan dressing thousand island'),
  Menu(id: 31, category: listCategory[1], name: 'Tuna Salad', rating: 4, price: 72000, urlPhoto: 'assets/sidedishes/side_dishes_tuna_salad.jpeg', description: 'Salad lettuce, kol ungu, wortel, jagung, tomat, bombay dan ikan tuna dengan dressing thousand island'),
  Menu(id: 32, category: listCategory[2], name: 'Lychee Breeze', rating: 5, price: 33000, urlPhoto: 'assets/drinks/drinks_lychee_breeze.png', description: 'Buah leci, sirup leci, soda dan jeruk nipis'),
  Menu(id: 33, category: listCategory[2], name: 'Tropical Punch', rating: 4, price: 33000, urlPhoto: 'assets/drinks/drinks_tropicalpunch.png', description: 'Buah peach, nata de coco, semangka, biji selasih, sirup mangga dan lemon tea'),
  Menu(id: 34, category: listCategory[2], name: 'Winter Punch', rating: 5, price: 33000, urlPhoto: 'assets/drinks/drinks_winter_punch.png', description: 'Buah leci, nata de coco, biji selasih, sirup leci dan lemon tea'),
  Menu(id: 35, category: listCategory[2], name: 'Toffee Coffee', rating: 5, price: 31000, urlPhoto: 'assets/drinks/drinks_toffee_coffee.jpg', description: 'Kopi, sirup karamel dan whipped cream'),
  Menu(id: 36, category: listCategory[2], name: 'Green Tea Shake', rating: 4, price: 26000, urlPhoto: 'assets/drinks/drinks_green_tea_shake.png', description: 'Bubuk Teh Hijau, Susu, Es Krim Vanila dan Whipped Cream'),
  Menu(id: 37, category: listCategory[2], name: 'Green Tea Yakult', rating: 3, price: 26000, urlPhoto: 'assets/drinks/drinks_green_tea_yakult.png', description: 'Bubuk teh hijau, yakult dan potongan buah melon', isLiked: true),
  Menu(id: 38, category: listCategory[2], name: 'Mixberry', rating: 5, price: 31000, urlPhoto: 'assets/drinks/drinks_mixberry.png', description: 'Soda bluberi, sirup stroberi, biji selasih dan jelly', isLiked: true),
  Menu(id: 39, category: listCategory[2], name: 'Orange Lychee Sparkle', rating: 4, price: 31000, urlPhoto: 'assets/drinks/drinks_orange_lychee_sparkle.png', description: 'Jus jeruk dan sirup leci', isLiked: true),
  Menu(id: 40, category: listCategory[2], name: 'Blue Ocean', rating: 5, price: 31000, urlPhoto: 'assets/drinks/drinks_blue_ocean.png', description: 'Soda bluberi, sirup mangga dan biji selasih', isLiked: true),
  Menu(id: 41, category: listCategory[2], name: 'Café Lattee', rating: 4, price: 24000, urlPhoto: 'assets/drinks/drinks_cafe_latte.png', description: 'Kopi dengan busa susu creamy dan taburan bubuk kayu manis', isLiked: true),
  Menu(id: 42, category: listCategory[2], name: 'Dilmah Tea', rating: 5, price: 20000, urlPhoto: 'assets/drinks/drinks_dilmah_tea.png', description: 'Segelas teh Dilmah', isLiked: true),
  Menu(id: 43, category: listCategory[2], name: 'Santino Coffee', rating: 5, price: 26000, urlPhoto: 'assets/drinks/drinks_santino_coffee.png', description: 'Kopi diseduh dengan Coffee Press', isLiked: true),
];

var listMenuChefFavoriteDummy = [
  Menu(id: 14, category: listCategory[0], name: 'Spicy Barbeque Fish', rating: 3, price: 74000, urlPhoto: 'assets/steaks/steaks_spicy_barbeque_fish.jpg', description: 'Steak ikan tengiri dipanggang bumbu pedas'),
  Menu(id: 2, category: listCategory[0], name: 'OX Tongue Steak', rating: 4, price: 93000, urlPhoto: 'assets/steaks/steaks_ox_tongue_steak.jpg', description: 'Steak lidah'),
  Menu(id: 3, category: listCategory[0], name: 'Medallion Steak', rating: 5, price: 88000, urlPhoto: 'assets/steaks/steaks_medallion_steak.jpg', description: 'Steak daging cincang dengan keju dan smoked beef'),
  Menu(id: 8, category: listCategory[0], name: 'Grilled Tenderloin Steak', rating: 5, price: 140000, urlPhoto: 'assets/steaks/steaks_grilled_tenderloin_steak.jpeg', description: 'Steak lulur dalam dipanggang dengan taburan merica hitam'),
  Menu(id: 33, category: listCategory[2], name: 'Tropical Punch', rating: 4, price: 33000, urlPhoto: 'assets/drinks/drinks_tropicalpunch.png', description: 'Buah peach, nata de coco, semangka, biji selasih, sirup mangga dan lemon tea'),
  Menu(id: 35, category: listCategory[2], name: 'Toffee Coffee', rating: 5, price: 31000, urlPhoto: 'assets/drinks/drinks_toffee_coffee.jpg', description: 'Kopi, sirup karamel dan whipped cream'),
  Menu(id: 38, category: listCategory[2], name: 'Mixberry', rating: 5, price: 31000, urlPhoto: 'assets/drinks/drinks_mixberry.png', description: 'Soda bluberi, sirup stroberi, biji selasih dan jelly'),
  Menu(id: 41, category: listCategory[2], name: 'Café Lattee', rating: 4, price: 24000, urlPhoto: 'assets/drinks/drinks_cafe_latte.png', description: 'Kopi dengan busa susu creamy dan taburan bubuk kayu manis'),
  Menu(id: 42, category: listCategory[2], name: 'Dilmah Tea', rating: 5, price: 20000, urlPhoto: 'assets/drinks/drinks_dilmah_tea.png', description: 'Segelas teh Dilmah'),
  Menu(id: 43, category: listCategory[2], name: 'Santino Coffee', rating: 5, price: 26000, urlPhoto: 'assets/drinks/drinks_santino_coffee.png', description: 'Kopi diseduh dengan Coffee Press'),

];

var listMenuTopSellerDummy = [
  Menu(id: 3, category: listCategory[0], name: 'Medallion Steak', rating: 5, price: 88000, urlPhoto: 'assets/steaks/steaks_medallion_steak.jpg', description: 'Steak daging cincang dengan keju dan smoked beef'),
  Menu(id: 1, category: listCategory[0], name: 'Tornado steak ', rating: 4, price: 93000, urlPhoto: 'assets/steaks/steaks_tornado_steak.jpg', description: ' Steak lulur dalam dililit smoked beef'),
  Menu(id: 14, category: listCategory[0], name: 'Spicy Barbeque Fish', rating: 3, price: 74000, urlPhoto: 'assets/steaks/steaks_spicy_barbeque_fish.jpg', description: 'Steak ikan tengiri dipanggang bumbu pedas'),
  Menu(id: 33, category: listCategory[2], name: 'Tropical Punch', rating: 4, price: 33000, urlPhoto: 'assets/drinks/drinks_tropicalpunch.png', description: 'Buah peach, nata de coco, semangka, biji selasih, sirup mangga dan lemon tea'),
  Menu(id: 41, category: listCategory[2], name: 'Café Lattee', rating: 4, price: 24000, urlPhoto: 'assets/drinks/drinks_cafe_latte.png', description: 'Kopi dengan busa susu creamy dan taburan bubuk kayu manis'),
  Menu(id: 42, category: listCategory[2], name: 'Dilmah Tea', rating: 5, price: 20000, urlPhoto: 'assets/drinks/drinks_dilmah_tea.png', description: 'Segelas teh Dilmah'),
  Menu(id: 43, category: listCategory[2], name: 'Santino Coffee', rating: 5, price: 26000, urlPhoto: 'assets/drinks/drinks_santino_coffee.png', description: 'Kopi diseduh dengan Coffee Press'),
  Menu(id: 8, category: listCategory[0], name: 'Grilled Tenderloin Steak', rating: 5, price: 140000, urlPhoto: 'assets/steaks/steaks_grilled_tenderloin_steak.jpeg', description: 'Steak lulur dalam dipanggang dengan taburan merica hitam'),
  Menu(id: 18, category: listCategory[0], name: 'Seoul Rice Steak', rating: 3, price: 90000, urlPhoto: 'assets/steaks/steaks_seoul_rice_steak.jpg', description: 'Nasi steak sapi spesial bumbu khas Korea disajikan dengan sup miso'),
  Menu(id: 19, category: listCategory[0], name: 'Bangkok Rice Steak', rating: 3, price: 90000, urlPhoto: 'assets/steaks/steaks_bangkok_rice_steak.jpeg', description: 'Nasi steak sapi spesial bumbu khas Thailand disajikan dengan sup miso'),
  Menu(id: 20, category: listCategory[0], name: 'Chicken Teriyaki Rice Steak', rating: 2, price: 65000, urlPhoto: 'assets/steaks/steaks_teriyaki_rice_steak.jpg', description: 'Daging ayam dengan saus teriyaki disajikan dengan nasi putih'),

];