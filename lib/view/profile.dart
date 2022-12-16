import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Detail Aplikasi'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 243, 180, 33),
        ),
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(255, 243, 180, 33),
                    Color.fromARGB(255, 243, 180, 33)
                  ])),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/id/thumb/a/a8/Rujak_soto.jpg/1200px-Rujak_soto.jpg",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Banyuwangi Kuliner",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Dikunjungi",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 243, 180, 33),
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "200x",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 243, 180, 33),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Disukai",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 243, 180, 33),
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "28x",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 243, 180, 33),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // Expanded(
                              //   child: Column(
                              //     children: <Widget>[
                              //       Text(
                              //         "Follow",
                              //         style: TextStyle(
                              //           color: Colors.redAccent,
                              //           fontSize: 22.0,
                              //           fontWeight: FontWeight.bold,
                              //         ),
                              //       ),
                              //       SizedBox(
                              //         height: 5.0,
                              //       ),
                              //       Text(
                              //         "1300",
                              //         style: TextStyle(
                              //           fontSize: 20.0,
                              //           color: Colors.pinkAccent,
                              //         ),
                              //       )
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Banyuwangi Kuliner adalah sebuah aplikasi yang berjalan di bidang kuliner.\n'
                      'Jika anda membutuhkan informasi mengenai kuliner-kuliner terbaik di kota Banyuwangi, Anda butuh BaKul',
                      style: TextStyle(
                        fontSize: 22.0,
                        // fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,

            // child: RaisedButton(
            //   onPressed: (){},
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(80.0)
            //   ),
            //   elevation: 0.0,
            //     padding: EdgeInsets.all(0.0),
            //   child: Ink(
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment.centerRight,
            //         end: Alignment.centerLeft,
            //         colors: [Colors.redAccent,Colors.pinkAccent]
            //       ),
            //       borderRadius: BorderRadius.circular(30.0),
            //     ),
            //     child: Container(
            //       constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            //       alignment: Alignment.center,
            //       child: Text("Contact me",
            //       style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
            //       ),
            //     ),
            //   )
            // ),
          ),
        ],
      ),
    );
  }
}
