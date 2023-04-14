import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.teal,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            'Profile',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(LineAwesomeIcons.sun)),
          ],
          backgroundColor: Colors.teal,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.pink,
              backgroundImage: AssetImage('images/image.jpeg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Omar Salama',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Build_conainer(
              icon: Icons.phone,
              name: '+20 1024980973',
            ),
            Build_conainer(
              icon: Icons.email,
              name: 'omarsalama117@gmail.com',
            ),
            Build_conainer(
              icon: Icons.school,
              name: 'Faculty of computer Science',
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Edit Profile',
                    style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  side: BorderSide.none,
                  backgroundColor: Colors.teal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Build_conainer extends StatelessWidget {
  final IconData icon;
  final String name;
  //final String title;
  Build_conainer({required this.icon, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 226, 199, 230),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
