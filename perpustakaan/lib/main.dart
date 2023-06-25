import 'package:flutter/material.dart';
import 'package:perpustakaan/daftar.dart';

void main() {
  runApp(MaterialApp(title: 'Dava book list', home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("BOOK LIST"),
        titleTextStyle: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.normal,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cf.shopee.ph/file/d3d1e14f8a913be5d4d7acc0dbe50ddc'),
                      radius: 50.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Dava Maulana',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .3),
                    child: Text(
                      'Book List',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
              leading: Icon(Icons.list_sharp),
              title: Text("Daftar Buku"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.favorite_border),
              title: Text("Buku Favorit"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.history),
              title: Text("History"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: 350,
              height: 350,
              padding: const EdgeInsets.all(3),
              child: const Image(image: AssetImage('images/buku.jpg')),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: const Text("Masuk")),
            Text("Daftar Buku")
          ],
        ),
      ),
    );
  }
}
