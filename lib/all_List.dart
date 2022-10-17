import 'package:flutter/material.dart';
import 'salary.dart';
import 'tiles.dart';
import 'recipient.dart';
final items = <IconData>[
  Icons.wallet,
  Icons.monetization_on,
  Icons.two_k,
];
final List<String> wr = [
  'Wallet Balance',
  'My Earnings',
  'Double Dhamaka Bonus',
];

final item1 = <IconData>[
  Icons.book,
  Icons.share,
  Icons.language,
  Icons.chat,
  Icons.headphones,
  Icons.star_rate_outlined,
  Icons.logout,
];

final List<String> wr1 = [
  'Khata',
  'Shared History',
  'Change Language',
  'Fresh Chat',
  'Call Support',
  'Rate us',
  'Logout',
];

List<CardItem> am = [
  CardItem(
      urlImage:'Image/8.jpg',
      sal: 'Adidas',
      up: '\$185,36.25',
      main: '\$135k/year'
  ),
  CardItem(
      urlImage: 'Image/6.png',
      sal: 'Nike',
      up: '\$174,94.00',
      main: '\$145k/year'),
  CardItem(
      urlImage: 'Image/7.jpg',
      sal: 'Puma',
      up: '\$190,23.16',
      main: '\$120k/year'),
];

List<CardItem1> pm = [
   CardItem1(img: 'Image/9.jpg', head: 'Walmart', sub: 'at 4.36 pm', t1: '-\$47.83', t2: 'Sep 20, 2022'),
  CardItem1(img: 'Image/10.jpg', head: 'Gold Gym', sub: 'at 9.47 am', t1: '-\$120.52', t2: 'Sep 20, 2022'),
  CardItem1(img: 'Image/11.png', head: 'Starbucks', sub: 'at 10.23 pm', t1: '-\$25.68', t2: 'Sep 19, 2022'),
  CardItem1(img: 'Image/12.jpg', head: 'McDonalds', sub: 'at 8.41 am', t1: '-\$113.69', t2: 'Sep 18, 2022'),
  CardItem1(img: 'Image/13.jpg', head: 'Burger King', sub: 'at 10.31 am', t1: '-\$121.56', t2: 'Sep 17, 2022'),
  CardItem1(img: 'Image/11.png', head: 'Starbucks', sub: 'at 10.54 pm', t1: '-\$28.60', t2: 'Sep 17, 2022'),
  CardItem1(img: 'Image/12.jpg', head: 'McDonalds', sub: 'at 8.32 am', t1: '-\$163.71', t2: 'Sep 16, 2022'),

];

List<Item2> gm = [
   Item2(urlimg: 'https://hookedoneverything.com/wp-content/uploads/2015/08/Kevin-hart-main.jpg',write: 'Kevin'),
  Item2(urlimg: 'https://853239.smushcdn.com/1831098/wp-content/uploads/2020/12/portrait-of-a-young-african-american-business-woma-PEK9XL4.jpg?lossy=1&strip=1&webp=1',write: 'Felcia'),
  Item2(urlimg: 'https://tse4.mm.bing.net/th?id=OIP.rh0Uipj0aulzzkOyZmjM3QHaE4&pid=Api&P=0',write: 'Lucas'),
  Item2(urlimg: 'https://www.aceshowbiz.com/images/photo/martina_hingis.jpg',write: 'Martina'),
  Item2(urlimg: 'https://lh3.googleusercontent.com/-yfgt7OBM5RM/VyTykrhMlLI/AAAAAAAAQBk/EWrPbIuXplw/s640/Kevin-McHale-dp-profile-pics-321.jpg',write: 'Luci'),
  Item2(urlimg: 'https://tse3.mm.bing.net/th?id=OIP.xduw3JfcDnn_Jq9mxiPYggHaHa&pid=Api&P=0',write: 'Reena'),
  Item2(urlimg: 'https://www.inalambrik.com.ec/wp-content/uploads/2017/02/steve-profile-1000x960.jpg',write: 'Steve'),
  Item2(urlimg: 'https://i.pinimg.com/736x/d3/4e/46/d34e469d23c6c34d2436c277c1e39ad9.jpg',write: 'Kylie'),




];