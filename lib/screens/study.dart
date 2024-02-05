// import 'package:flutter/material.dart';
//
// class ShowImage extends StatelessWidget {
//   final Programming programming;
//   const ShowImage({super.key, required this.programming});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(programming.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Image.network(programming.imageUrl),
//       ),
//     );
//   }
// }
//
// class Programming {
//   String title;
//   int year;
//   String imageUrl;
//
//   Programming({
//     required this.title,
//     required this.year,
//     required this.imageUrl,
//   });
// }
//
// List<Programming> programmingLanguage = [
//   Programming(
//     title: "Dart Programming",
//     year: 2013,
//     imageUrl:
//     "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Dart_logo.png/800px-Dart_logo.png",
//   ),
//   Programming(
//     title: "Python Programming",
//     year: 1991,
//     imageUrl:
//     "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1200px-Python-logo-notext.svg.png",
//   ),
//   Programming(
//       title: "C Programming",
//       year: 1972,
//       imageUrl:
//       "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/1200px-C_Programming_Language.svg.png"),
//   Programming(
//       title: "Java Programming",
//       year: 1995,
//       imageUrl:
//       "https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/1200px-Java_programming_language_logo.svg.png"),
// ];
//
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "Hero Animation in ListViewBuilder",
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(3.0),
//         child: ListView.builder(
//           itemCount: programmingLanguage.length,
//           itemBuilder: (context, index) {
//             Programming programming = programmingLanguage[index];
//             return Card(
//               child: ListTile(
//                 title: Text(programming.title),
//                 subtitle: Text(programming.year.toString()),
//                 leading: Hero(
//                   tag: programming,
//                   child: GestureDetector(
//                     onTap: () => Navigator.of(context).push(
//                       MaterialPageRoute(
//                         builder: (context) =>
//                             ShowImage(programming: programming),
//                       ),
//                     ),
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       child: Image.network(programming.imageUrl),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPdfViewer extends StatefulWidget {
  const MyPdfViewer({super.key});

  @override
  State<MyPdfViewer> createState() => _MyPdfViewerState();
}

class _MyPdfViewerState extends State<MyPdfViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("مرحبا بك في تعلم لغة برمجية"),
        ),
        body:
        // link fron internet
        // SfPdfViewer.network(
        //   "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
        // )
      SfPdfViewer.asset("assets/study.pdf"),
    );
  }
}