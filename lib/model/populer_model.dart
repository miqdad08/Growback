import 'package:growback/model/populer_model.dart';

class DetailModel {
  String imageUrls;
  String name;
  String price;
  String rating;
  String ratingText;

  DetailModel({
    required this.imageUrls,
    required this.name,
    required this.price,
    required this.rating,
    required this.ratingText,
  });
}

class PopulerModel {
  String image;
  String title;
  String jarak;
  String rating;
  List<DetailModel> listProduct;

  PopulerModel({
    required this.image,
    required this.title,
    required this.jarak,
    required this.rating,
    required this.listProduct,
  });
}

var populerModelList = [
  PopulerModel(
      image:
          'https://images.unsplash.com/photo-1602223877826-d1d04cc7cee8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29ybiUyMHJvYXN0ZWR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
      title: 'Jagung Bakar ABC',
      jarak: '1.0 km',
      rating: '4.9 (120 Ratings)',
      listProduct: [
        DetailModel(
            imageUrls:'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
            name: 'Enjoy1',
            price: 'Rp30.000',
            rating: '4.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
            imageUrls: 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
            name: 'Double Enjoy',
            price: 'Rp30.000',
            rating: '2.9',
            ratingText: '(120 Ratings)',),
        DetailModel(
            imageUrls:
            "https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            name: 'Aaman',
            price: 'Rp30.000',
            rating: '3.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
            imageUrls:
            'https://images.unsplash.com/photo-1551782450-a2132b4ba21d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',
            name: 'Aaman2',
            price: 'Rp30.000',
            rating: '2.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
            imageUrls:
            'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
            name: 'Burger Aaman',
            price: 'Rp30.000',
            rating: '2.9',
            ratingText: '(120 Ratings)',),
      ]),
  PopulerModel(
      image:
          'https://images.unsplash.com/photo-1555126634-323283e090fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bm9vZGxlJTIwc291cHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
      title: 'Mie Re Bost',
      jarak: '4.0 km',
      rating: '4.9 (120 Ratings)',
      listProduct: [
        DetailModel(
            imageUrls:'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
            name: 'Enjoy1',
            price: 'Rp30.000',
            rating: '4.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls: 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          name: 'Double Enjoy',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
        DetailModel(
            imageUrls:
            "https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            name: 'Aaman',
            price: 'Rp30.000',
            rating: '3.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
            imageUrls:
            'https://images.unsplash.com/photo-1551782450-a2132b4ba21d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',
            name: 'Aaman2',
            price: 'Rp30.000',
            rating: '2.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls:
          'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          name: 'Burger Aaman',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
      ]
  ),
  PopulerModel(
      image:
          'https://images.unsplash.com/photo-1563245370-63ffc97abdbd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGltc3VtfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      title: 'Dimsum Dims',
      jarak: '1.0 km',
      rating: '4.9 (120 Ratings)',
      listProduct: [
        DetailModel(
            imageUrls:'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
            name: 'Enjoy1',
            price: 'Rp30.000',
            rating: '4.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls: 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          name: 'Double Enjoy',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
        DetailModel(
            imageUrls:
            "https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            name: 'Aaman',
            price: 'Rp30.000',
            rating: '3.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
            imageUrls:
            'https://images.unsplash.com/photo-1551782450-a2132b4ba21d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',
            name: 'Aaman2',
            price: 'Rp30.000',
            rating: '2.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls:
          'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          name: 'Burger Aaman',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
      ]
  ),
  PopulerModel(
      image:
          'https://images.unsplash.com/photo-1616636830943-606a21a78788?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFydGFiYWt8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
      title: 'Martabak Telor',
      jarak: '4.0 km',
      rating: '4.9 (120 Ratings)',
      listProduct: [
        DetailModel(
            imageUrls:'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
            name: 'Enjoy1',
            price: 'Rp30.000',
            rating: '4.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls: 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          name: 'Double Enjoy',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
        DetailModel(
            imageUrls:
            "https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            name: 'Aaman',
            price: 'Rp30.000',
            rating: '3.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
            imageUrls:
            'https://images.unsplash.com/photo-1551782450-a2132b4ba21d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',
            name: 'Aaman2',
            price: 'Rp30.000',
            rating: '2.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls:
          'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          name: 'Burger Aaman',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
      ]),
  PopulerModel(
      image:
          'https://images.unsplash.com/photo-1578985545062-69928b1d9587?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FrZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
      title: 'Cake Cok',
      jarak: '0.0 km',
      rating: '4.9 (120 Ratings)',
      listProduct: [
        DetailModel(
            imageUrls:'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
            name: 'Enjoy1',
            price: 'Rp30.000',
            rating: '4.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls: 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          name: 'Double Enjoy',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
        DetailModel(
            imageUrls:
            "https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            name: 'Aaman',
            price: 'Rp30.000',
            rating: '3.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
            imageUrls:
            'https://images.unsplash.com/photo-1551782450-a2132b4ba21d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',
            name: 'Aaman2',
            price: 'Rp30.000',
            rating: '2.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls:
          'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          name: 'Burger Aaman',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
      ]),
  PopulerModel(
      image:
          'https://images.unsplash.com/photo-1587248721852-ffc60bffc129?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBpZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
      title: 'Pie pay',
      jarak: '0.0 km',
      rating: '4.9 (120 Ratings)',
      listProduct: [
        DetailModel(
            imageUrls:'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
            name: 'Enjoy1',
            price: 'Rp30.000',
            rating: '4.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls: 'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          name: 'Double Enjoy',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
        DetailModel(
            imageUrls:
            "https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
            name: 'Aaman',
            price: 'Rp30.000',
            rating: '3.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
            imageUrls:
            'https://images.unsplash.com/photo-1551782450-a2132b4ba21d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',
            name: 'Aaman2',
            price: 'Rp30.000',
            rating: '2.9',
            ratingText: '(120 Ratings)'),
        DetailModel(
          imageUrls:
          'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          name: 'Burger Aaman',
          price: 'Rp30.000',
          rating: '2.9',
          ratingText: '(120 Ratings)',),
      ]),
];
