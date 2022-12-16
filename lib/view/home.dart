import 'package:banyuwangikuliner/model/resep_model.dart';
import 'package:banyuwangikuliner/view/boarding.dart';
import 'package:banyuwangikuliner/view/detail.dart';
import 'package:banyuwangikuliner/view/login.dart';
import 'package:banyuwangikuliner/view/profile.dart';
import 'package:flutter/material.dart';
import 'package:banyuwangikuliner/service/resep_card.dart';
import 'package:hexcolor/hexcolor.dart';

import '../service/resep_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Boarding Page'),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Boarding()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home Page'),
              onTap: () {
                icon: new Icon(Icons.logout);
                  Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.accessible),
              title: const Text('Profile Aplikasi'),
              onTap: () {
                icon: new Icon(Icons.logout);
                  Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProfileApp()));
              },
            ),
            
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AssetImage('lib/images/makan2.png'),
            Image.asset(
              'lib/images/makan2.png',
              width: 45,
            ),
            const Text('Daftar Makanan'),
          ],
        ),
        actions: [
          IconButton(
            icon: new Icon(Icons.logout),
            color: Colors.white,
            onPressed: () {
              print('Log Out');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Boarding()));
            },
          )
        ],
        // title:
        // const Text('Banyuwangi Kuliner'),
        backgroundColor: HexColor('D29035'),
      ),
      body: FutureBuilder<List<Data>>(
          future: Resep1.getDataResep(),
          builder: (context, snapshot) {
            //loading
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('Masih Loading...');
            } else {
              //error
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                //berhasil
                return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => detailPage(
                                data: snapshot.data![index],
                                fetchData: Resep1.getDataResep()),
                          )),
                          child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "${snapshot.data![index].img}"),
                                      fit: BoxFit.cover)),
                              child: Center(
                                child: Text(
                                  '${snapshot.data![index].nama}',
                                  style: TextStyle(
                                      color: HexColor('FFFFFF'),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        );
                      },
                    ));
              }
            }
          }),
    );
  }
}
