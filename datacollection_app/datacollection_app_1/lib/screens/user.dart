//import 'dart:convert';

import 'package:datacollection_app_1/models/user_model.dart';
import 'package:flutter/material.dart';

//import 'package:http/http.dart' as http;
//import '../services/global.dart';
import '../widgets/input_text.dart';

class UserWidget extends StatefulWidget {
  const UserWidget({super.key});

  @override
  State<UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  //TextEditingController courseName = TextEditingController();
  //TextEditingController courseDetails = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  String userId = "";
  //List<Course> courseList = [];
  //Course courseRecord = Course();
  User userRecord=User();
  @override
  Widget build(BuildContext context) {
    //double logoWidth = 150;
    //double logoHeight = 150;
    // if (MediaQuery.of(context).size.width < 800) {
    //   logoHeight = 75;
    //   logoWidth = 75;
    // }
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("Data Collection App"),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  clearScreen();
                },
                child: const Text("NEW")),
            const SizedBox(
              width: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  if (formGlobalKey.currentState!.validate()) {
                    //saveRecord();
                  }
                },
                child: const Text("SAVE"))
          ],
        ),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 132, 159, 171)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formGlobalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Align(
                //   alignment: Alignment.center,
                //   child: Container(
                //     width: logoWidth,
                //     height: logoHeight,
                //     child: const CircleAvatar(
                //       backgroundImage: AssetImage("assets/images/student.jpeg"),
                //     ),
                //   ),
                // ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: .5)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputText(
                          caption: "Enter your Email ID",
                          modelObject: userRecord,
                          fieldName: "user_email",
                          width: 250,
                        ),
                        InputText(
                          caption: "Name (HOF)",
                          modelObject: userRecord,
                          fieldName: "user_name",
                          width: 300,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                  child: Text(
                    "List Of Courses",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // FutureBuilder(
                //   future: getList(),
                //   builder: (context, snapshot) {
                //     return Expanded(
                //       child: ListView.builder(
                //         scrollDirection: Axis.vertical,
                //         shrinkWrap: true,
                //         itemCount: courseList.length,
                //         itemBuilder: (context, index) {
                //           return Container(
                //             decoration: const BoxDecoration(
                //                 color: Color.fromARGB(255, 178, 221, 240),
                //                 border: Border(
                //                     bottom: BorderSide(color: Colors.black))),
                //             child: InkWell(
                //               onTap: () {
                //                 courseId = courseList[index].id.toString();
                //                 courseRecord.courseName =
                //                     courseList[index].courseName ?? "";

                //                 courseRecord.courseDetails =
                //                     courseList[index].courseDetails ?? "";

                //                 setState(() {});
                //               },
                //               child: ListTile(
                //                 leading: const Icon(Icons.man),
                //                 title: Text(courseList[index].courseName ?? ""),
                //                 subtitle: Text(
                //                     "Details : ${courseList[index].courseDetails}"),
                //                 trailing: ElevatedButton(
                //                     onPressed: () {
                //                       courseId =
                //                           courseList[index].id.toString();
                //                       showConfirmation(
                //                           context, "Do you want to delete ? ",
                //                           (String message) {
                //                         //print(message);
                //                         deleteRecord();
                //                       });
                //                     },
                //                     child: const Text("Delete")),
                //               ),
                //             ),
                //           );
                //         },
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void clearScreen() {
    userId = "";
    userRecord = User();
    setState(() {});
  }

  // Future<void> saveRecord() async {
  //   try {
  //     Map<String, dynamic> body = {
  //       //'id': courseId,
  //       //'course_name': courseName.text,
  //       //'course_details': courseDetails.text,
  //       'id': courseId,
  //       'course_name': courseRecord.courseName,
  //       'course_details': courseRecord.courseDetails,
  //     };
  //     Uri url = Uri.parse("http://localhost:8080/course/create");
  //     if (courseId.isNotEmpty) {
  //       url = Uri.parse("http://localhost:8080/course/update");
  //     }
  //     final response = await http.post(
  //       url,
  //       headers: {
  //         "Access-Control-Allow-Origin": "*",
  //         'Content-Type': 'application/json',
  //         'Accept': '*/*',
  //       },
  //       body: jsonEncode(body),
  //     );
  //     Map<String, dynamic> data = jsonDecode(response.body);
  //     String msg = data["message"];
  //     if (msg.toLowerCase().contains("success")) {
  //       showMessage(context, msg);
  //       if (courseId.isEmpty) {
  //         courseId = data["id"].toString();
  //       }
  //       clearScreen();
  //       setState(() {});
  //       print("msg = $msg");
  //     } else {
  //       showMessage(context, msg);
  //       print("msg = $msg");
  //     }
  //   } catch (e) {}
  // }

  // Future<void> getList() async {
  //   try {
  //     Map<String, dynamic> body = {
  //       'user_id': "test",
  //     };

  //     Uri url = Uri.parse("http://localhost:8080/course/getlist");

  //     final response = await http.post(
  //       url,
  //       headers: {
  //         "Access-Control-Allow-Origin": "*",
  //         'Content-Type': 'application/json',
  //         'Accept': '*/*',
  //       },
  //       body: jsonEncode(body),
  //     );

  //     Map<String, dynamic> data = jsonDecode(response.body);
  //     String msg = data["message"];
  //     if (msg.toLowerCase().contains("success")) {
  //       var jsonData = data["listData"];

  //       courseList.clear();
  //       jsonData.forEach((jsonItem) {
  //         Course course = Course();
  //         course.id = jsonItem['id'];
  //         course.courseName = jsonItem['course_name'];
  //         course.courseDetails = jsonItem['course_details'];

  //         courseList.add(course);
  //       });

  //       print(courseList.length);

  //       //clearScreen();
  //       print("msg = $msg");
  //     } else {
  //       showMessage(context, msg);
  //       print("msg = $msg");
  //     }
  //   } catch (e) {
  //     showMessage(context, "Error : $e");
  //     print("msg = $e}");
  //   }
  // }

  // Future<void> deleteRecord() async {
  //   try {
  //     Map<String, dynamic> body = {
  //       'id': courseId,
  //       'course_name': courseName.text,
  //       'course_details': courseDetails.text,
  //     };
  //     if (courseId.isEmpty) {
  //       showMessage(context, "Select a record...");
  //     }
  //     Uri url = Uri.parse("http://localhost:8080/course/delete");

  //     final response = await http.post(
  //       url,
  //       headers: {
  //         "Access-Control-Allow-Origin": "*",
  //         'Content-Type': 'application/json',
  //         'Accept': '*/*',
  //       },
  //       body: jsonEncode(body),
  //     );
  //     Map<String, dynamic> data = jsonDecode(response.body);
  //     String msg = data["message"];
  //     if (msg.toLowerCase().contains("success")) {
  //       showMessage(context, msg);

  //       clearScreen();
  //       setState(() {});
  //       print("msg = $msg");
  //     } else {
  //       showMessage(context, msg);
  //       print("msg = $msg");
  //     }
  //   } catch (e) {
  //     showMessage(context, "Error : $e");
  //   }
  // }
}
