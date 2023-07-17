import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //--------------------appbar-----------------
        appBar: AppBar(
          //تلوين app bar بتدرج لوني نفس لون ال body
          elevation: 20,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue,
                  Colors.greenAccent], // قائمة الألوان للتدرج
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          leading:
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // print('notification clicked');
            },
          ),

          title: const Text(
            'bio app',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,


          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_sharp),
              onPressed: () {
                // print('notification clicked');
              },
            ),
            // IconButton(
            //   icon: const Icon(Icons.notifications_sharp),
            //   onPressed: () {
            //   },
            // ),
            IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              onPressed: () {
                // print('second icon');
              },
            )
          ],

        ),
        //--------------------appbar---------------------------------------------

        //--------------------body-----------------------------------------------
        body: Container (
          alignment: Alignment.center,
          decoration: const BoxDecoration (
            gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.greenAccent
                ]
            ),
          ),
          child: const  Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage('https://i.ibb.co/YZrSsg7/Screenshot-Whats-App.jpg'),
              ),
              SizedBox(height: 10),
              Text("Mostafa Kh. Zemili - Mobile dev",

                style:
                TextStyle(color: Colors.white,
                  fontSize: 20,
                  wordSpacing: 2,

                ),
              ),
              Text("University of Palestine",
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  wordSpacing: 2,

                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black26,
                indent: 30,
                endIndent: 30,
                height: 50,
              ),

              //----------------card--------------------------------------------------
              Card(

                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      // أيقونة على اليسار
                      Icon(Icons.phone_android ,color: Colors.lightGreen,),

                      // نص في الوسط
                      Expanded(
                        child: Text(
                          '0594141647',
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // أيقونة على اليمين
                      Icon(Icons.phone,color: Colors.lightBlueAccent,),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      // أيقونة على اليسار
                      Icon(Icons.email_rounded ,color: Colors.lightGreen,),

                      // نص في الوسط
                      Expanded(
                        child: Text(
                          'Email : mostafazemili@gmail.com',
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // أيقونة على اليمين
                      Icon(Icons.send,color: Colors.lightBlueAccent,),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      // أيقونة على اليسار
                      Icon(Icons.location_on ,color: Colors.lightGreen,),

                      // نص في الوسط
                      Expanded(
                        child: Text(
                          "Palestine,Gaza",
                          textAlign: TextAlign.center,
                        ),
                      ),

                      // أيقونة على اليمين
                      Icon(Icons.map,color: Colors.lightBlueAccent,),
                      // IconButton(onPressed:  (){}, icon: Icon(Icons.map)),

                    ],
                  ),
                ),
              ),






              //-----------------------------------------------
              //---------------card---------------
              // Card(
              //   child: ListTile(
              //     // onTap: (){
              //     //   print("email send");
              //     // },
              //     minLeadingWidth: 0,
              //     leading: Icon(Icons.import_contacts_sharp),
              //     title: Text("Location"),
              //     subtitle: Text("Gaza"),
              //     trailing: Icon(Icons.map),
              //   ),
              // ),
              //



              // Card(
              //   elevation: 5,
              //   child: Row(
              //
              //    children: [
              //      Icon(Icons.phone_android),
              //      SizedBox(width: 20, height: 50,),
              //      Column(
              //        children: [
              //          Text("MOBILE"),
              //          Text("0594141647"),
              //        ],
              //      ),
              //
              //
              //
              //    ],
              //   ),
              // ),
              // Card(
              //   elevation: 5,
              //   child: Row(
              //     children: [
              //       Icon(Icons.phone_android),
              //       SizedBox(width: 20, height: 50,),
              //       Column(
              //         children: [
              //           Text("MOBILE"),
              //           Text("0594141647"),
              //         ],
              //       ),
              //       Icon(Icons.place,color: Colors.lightBlueAccent,),
              //       SizedBox(width: 20, height: 50,),
              //
              //       // IconButton(onPressed: (){},
              //       //     icon: Icon(Icons.phone)),
              //
              //
              //     ],
              //   ),
              // ),
              // Card(
              //   elevation: 5,
              //   child: Row(
              //     children: [
              //       Icon(Icons.phone_android),
              //       SizedBox(width: 20, height: 50,),
              //       Column(
              //         children: [
              //           Text('Email'),
              //           Text('mostafazemili@gmail.com'),
              //
              //           // IconButton(onPressed: (){},
              //           //     icon: Icon(Icons.phone)),
              //
              //         ],
              //       ),
              //       Icon(Icons.email_rounded,color: Colors.lightBlueAccent,),
              //       SizedBox(width: 20, height: 50,),
              //
              //
              //
              //     ],
              //   ),
              // ),
              //---------------card----------------
              //-----------------------------------------------

            ],

          ),
        )
      //------------------body------------------------




    );
  }
}
