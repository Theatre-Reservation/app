// import 'package:flutter/material.dart';
// import '../../services/show_service.dart';

// class ShowList extends StatefulWidget {
//   @override
//   _ShowListState createState() => _ShowListState();
// }

// class _ShowListState extends State<ShowList> {
//   List<dynamic> shows = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchShows();
//   }

//   fetchShows() async {
//     try {
//       var fetchedShows = await ShowService.getShows();
//       setState(() {
//         shows = fetchedShows;
//       });
//     } catch (e) {
//       // Handle error
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: shows.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(shows[index]['title']),
//           subtitle: Text(shows[index]['description']),
//         );
//       },
//     );
//   }
// }
