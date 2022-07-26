import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: productList(),
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20, top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TOTAL'),
                      SizedBox(height: 5,),
                      Text('\$1450',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 29
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: (){},
                    child: Text('Checkout',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
Widget productList(){
  return ListView(
    children: [
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem( ),
    ],
  );
}

Widget productItem(){
  return Container(
    height: 120,
    margin: const EdgeInsets.all(5),
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          child: Image.asset(
            'assets/product-1.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Titulo do produto'),
              const Text('\$200,00',
              style: TextStyle(
                color: Colors.blue,
              ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 30,
                width: 120,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(5),),
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      child: TextButton(
                          onPressed: (){},
                          child: Text('+')),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      child: Text('1'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      child: TextButton(
                          onPressed: (){},
                          child: Text('-')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
