import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Arreglo no.5',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Envios a domicilio',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Color(0xffeeb404),
          ),
          const Text('4.9'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.info_outline, 'Info'),
        _buildButtonColumn(color, Icons.reviews, 'Reseñas'),
        _buildButtonColumn(color, Icons.add_shopping_cart, 'comprar'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Bienvenido a nuestra tienda de flores, donde encontrará la más amplia selección de flores frescas y hermosas para cualquier ocasión.  '
        'Nuestro equipo de expertos floristas ha creado cuidadosamente cada uno de nuestros arreglos, asegurándose de que cada flor sea perfecta y se complemente con las demás. Utilizamos solo las flores más frescas y de la más alta calidad para garantizar que nuestros arreglos sean duraderos y llenos de vida. '
        'Nuestra venta de flores ofrece productos de alta calidad, servicio excepcional y la garantía de que encontrará el arreglo floral perfecto para cualquier ocasión. ¡Esperamos verlo pronto en nuestra tienda y ayudarlo a crear momentos inolvidables con nuestras hermosas flores! ',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Floreria Sariñana',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Floreria Sariñana'),
          backgroundColor: Color(0xffc73c55),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/g5.jpg',
              width: 600,
              height: 340,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
