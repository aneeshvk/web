import 'package:datacollection_app_1/screens/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pageName = "home";
  String pageCaption = "Home Page";
  bool counterSwitch = false;
  Widget homeWidget() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          // image: const DecorationImage(
          //     fit: BoxFit.cover, image: AssetImage("assets/images/backg.jpg"))
              ),
      child: (Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Text(
            //       "Show Counter Example",
            //       style: TextStyle(color: Colors.white),
            //     ),
            //     Switch(
            //       value: counterSwitch,
            //       onChanged: (value) async {
            //         counterSwitch = value;
            //         showCounterExample = value; // Obtain shared preferences.
            //         final SharedPreferences prefs =
            //             await SharedPreferences.getInstance();

            //         // Save an boolean value to 'repeat' key.
            //         await prefs.setBool('counterSwitch', value);
            //         setState(() {});
            //       },
            //       inactiveTrackColor: Colors.amber,
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 5,
            ),
            //showCounterExample=true?
            // if (counterSwitch)
            //   ElevatedButton(
            //       onPressed: () {
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) {
            //           return const CounterWidget();
            //         }));
            //       },
            //       child: const Text("Counter Example")),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const UserWidget();
                  }));
                },
                child: const Text("User Entry Page")),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const CourseWidget();
                  // }));
                },
                child: const Text("Course Entry Page")),
          ],
        ),
      )),
    );
  }

  // Future<void> loadSettings() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();

  //   // Save an boolean value to 'repeat' key.
  //   counterSwitch = prefs.getBool('counterSwitch') ?? false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    //loadSettings();
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(pageCaption),
              const Spacer(),
            ],
          ),
        ),
        body: homeWidget());
  }
}
