import 'package:flutter/material.dart';
import 'package:hack_final/datamodels/user_location.dart';
import 'package:provider/provider.dart';

class homePlaceholderWidget extends StatelessWidget {



 @override
 Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);
  //   return Center(
  //     child: Text(
  //         'Location: Lat${userLocation?.latitude}, Long: ${userLocation?.longitude}'),
  //   );


   return Scaffold(
     backgroundColor: Colors.red[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.cyan,
                        radius: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "User B",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "+91-9587639838",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "userB@gmail.com",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Status:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 16),
                          child: Column(
                            children: <Widget>[
                              Text("Suspected for Covid 19"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Location:",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 0, 5, 16),
                          child: Text("Lat${userLocation?.latitude}, Long: ${userLocation?.longitude}"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );



 }
}