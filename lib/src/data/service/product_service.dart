import 'package:simple/src/data/model/inventory.dart';
import 'package:simple/src/data/model/product.dart';

class ProductService {
  List<Product> listProduct = [
    Product(
        id: "1",
        title: "Fashion shirt",
        description: "Pretty",
        price: 200.000,
        rating: 2.5,
        amountProduct: 10,
        createAt: "10/10/2021",
        isLike: false,
        urlImage: [
          'https://cafefcdn.com/thumb_w/650/2019/6/4/5069g-3x2-forever-in-florals-768x512-1559636365541203324963-crop-15596363709051973797845.jpg'
        ],
        category: "Category",
        inventory: [
          Inventory(
            id: "1",
            color: "Yellow",
            size: "M",
            stockQuantity: 10,
          ),
          Inventory(
            id: "2",
            color: "White",
            size: "S",
            stockQuantity: 2,
          ),
          Inventory(
            id: "4",
            color: "Black",
            size: "S",
            stockQuantity: 1,
          ),
          Inventory(
            id: "5",
            color: "Red",
            size: "XL",
            stockQuantity: 5,
          ),
        ]),
    Product(
        id: "2",
        title: "Fashion shirts 1",
        description: "Beautiful 1",
        price: 350.000,
        rating: 4.5,
        amountProduct: 2,
        createAt: "21/2/2020",
        isLike: false,
        urlImage: [
          'https://vcdn1-giaitri.vnecdn.net/2015/04/23/1-4854-1429761605.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=Bp8MxcmkYfVaR4Hvlg9qAg'
        ],
        category: "Category1",
        inventory: [
          Inventory(
            id: "8",
            color: "Green",
            size: "M",
            stockQuantity: 10,
          ),
          Inventory(
            id: "9",
            color: "Violet",
            size: "XL",
            stockQuantity: 2,
          ),
        ]),
    Product(
        id: "3",
        title: "Fashion shirt 2",
        description: "Beautiful 2",
        price: 200.000,
        rating: 1,
        amountProduct: 2,
        createAt: "10/10/2012",
        isLike: false,
        urlImage: [
          'https://farm2.staticflickr.com/1449/24800673529_64272a66ec_z_d.jpg'
        ],
        category: "Category 2c"),
    Product(
        id: "4",
        title: "Fashion shirt 3",
        description: "Beautiful 3",
        price: 210.000,
        rating: 3.5,

        amountProduct: 10,
        createAt: "10/10/2029",
        isLike: false,
        urlImage: [
          'https://farm4.staticflickr.com/3752/9684880330_9b4698f7cb_z_d.jpg'
        ],
        category: "Category 3"),
    Product(
        id: "5",
        title: "Fashion shirt 4",
        description: "Beautiful 4",
        price: 500.000,
        rating: 0,
        amountProduct: 10,
        createAt: "10/10/2014",
        isLike: false,
        urlImage: [
          'https://farm9.staticflickr.com/8295/8007075227_dc958c1fe6_z_d.jpg'
        ],
        category: "Category"),
    Product(
        id: "6",
        title: "Fashion shirt 5",
        description: "Pretty 5 ",
        price: 150.000,
        rating: 5,
        amountProduct: 2,
        createAt: "10/10/2011",
        isLike: false,
        urlImage: [
          'https://farm4.staticflickr.com/3852/14447103450_2d0ff8802b_z_d.jpg'
        ],
        category: "Category 5"),
    Product(
        id: "7",
        title: "Fashion shirt 6 ",
        description: "Pretty 6 ",
        price: 520.000,
        rating: 4,
        amountProduct: 10,
        createAt: "24/02/2012",
        isLike: false,
        urlImage: [
          'https://i.imgur.com/OB0y6MR.jpg'
        ],
        category: "Category 6"),
  ];

  Future<List<Product>> getListProduct() async {
    return listProduct;
  }

// Future likeProduct(int isLike) async {
//   if (isLike == 0) {
//     isLike = 1;
//
//   }
// }
}
