import 'package:banyuwangikuliner/model/resep_model.dart';
import 'package:flutter/material.dart';
import 'package:banyuwangikuliner/service/resep_card.dart';
// import 'package:hexcolor/hexcolor.dart';



// import '../service/ramene_service.dart';
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
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.black,
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
                // return Text(snapshot.data.toString());
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.network(
                                "${snapshot.data![index].img}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: double.infinity,
                                  color: Colors.amber,
                                  child: Text(
                                    "${snapshot.data![index].nama}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      // color: HexColor('522206'),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.amber,
                                  child: Text(
                                    "${snapshot.data![index].deskripsi}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                );
              }
            }
          }),
    );
  }
}