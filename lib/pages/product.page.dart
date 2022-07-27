import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  final String image;
  final String title;
  final String description;
  final double price;

  const ProductPage({Key? key,required this.image,required this.title,required this.description, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.00,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(image,
                width: double.infinity,
                fit: BoxFit.fitWidth,),
              ),
            ),
          ];
        },
        body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
            child: Text(title,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Text(description,)
            ,),
          Padding(padding: EdgeInsets.all(10),
          child: Text(
            'Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Text(
            'Eleve o nível do seu treino diário com a camiseta Nike Dri-FIT Academy. O tecido macio e elástico remove o suor da pele, enquanto os painéis de tela mantêm o frescor para que você se concentre em dar o seu melhor no jogo. Este produto é feito com fibras de poliéster reciclado.',
          ),)
        ],
        ),
      ),
    );
  }
}
