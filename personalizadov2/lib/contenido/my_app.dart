// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;
  final List<Widget> _paginas = [
    const _PaginaDescriptcion(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galeria con container',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Galeria Personalizada'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Center(child: _buildImageColumn()),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('../image/pic2.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.9,
                  ),
                ),
                accountName: const Text(
                  "Neymar JR",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                accountEmail: const Text(
                    "Neymarjr10@gmail.com " ' - ' " Instagram: @neymarjr",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('../image/pic1.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              //DrawerHeader(
                //decoration: const BoxDecoration(
                  //color: Colors.black,
                //),
                //child: Container(
                  //decoration: const BoxDecoration(
                    //image: DecorationImage(
                      //image: AssetImage('../image/epa.png'),
                      //fit: BoxFit.cover,
                    //),
                  //),
                //),
              ),
              //Column(
                //children: const [
                  //Text(
                    //'Sena CBA',
                    //style: TextStyle(
                      //color: Colors.black,
                      //fontSize: 25,
                    //),
                  //),
                  //Text(
                    //'Bienvenidos',
                    //style: TextStyle(
                      //color: Colors.black,
                      //fontSize: 25,
                    //),
                  //),
                //],
              //),
              Column(
                children: const [
                  ListTile(
                    title: Text("Inicio"),
                    leading: Icon(Icons.home), iconColor: Colors.blueGrey,
                  ),
                  Divider(
                    height: 0.2,
                  ),
                  ListTile(
                    title: Text("Snapchat"),
                    leading: Icon(Icons.snapchat), iconColor: Colors.blueGrey,
                  ),
                  ListTile(
                    title: Text("Contacto"),
                    leading: Icon(Icons.contact_phone_sharp), iconColor: Colors.blueGrey,
                  ),
                  ListTile(
                    title: Text("Messenger"),
                    leading: Icon(Icons.messenger), iconColor: Colors.blueGrey,
                  ),
                  Divider(
                    height: 0.2,
                  ),
                  ListTile(
                    title: Text("email"),
                    leading: Icon(Icons.mail), iconColor: Colors.blueGrey,
                  ),
                  ListTile(
                    title: Text("Facebook"),
                    leading: Icon(Icons.facebook), iconColor: Colors.blueGrey,
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (index){
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.image, color: Colors.black,), label: "Imagenes"),
            BottomNavigationBarItem(icon: Icon(Icons.description, color: Colors.black,), label: "Descripcion"),
            BottomNavigationBarItem(icon: Icon(Icons.add, color: Colors.black,), label: "Mas"),
          ],
        ),
      ),
    );
  }
  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white12,
      ),
      child: ClipRect(
        child: Align(
          alignment: Alignment.center,
          widthFactor: 1,
          heightFactor: 1,
          child: Column(
            children: [
              _buildImageRow(1),
              _buildImageRow(3),
            ],
          ),
        ),
      ),
    );
  }

//#fin_construido_por_column
  Widget _buildDecoratedImage(int imageIndex) => Expanded(
      child: Container(
        width: 150,
        //heigth: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.blueGrey),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('../image/pic$imageIndex.jpg'),


      )
  );

  Widget _buildImageRow(int imageIndex) => Row(
    children: [
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex + 1),
    ],
  );
}
class _PaginaDescriptcion extends StatelessWidget {
  const _PaginaDescriptcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home', style: TextStyle(fontSize: 30),),
    );
  }
}
