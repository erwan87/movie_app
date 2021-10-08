import 'package:flutter/material.dart';
import 'package:movie_app/ui/movie_detail_body.dart';
class DetailScreenArguments {
  final int movieId;
  final String movieName;
  DetailScreenArguments({
    required this.movieId,
    required this.movieName,
  });
}

class DetailScreenScreen extends StatelessWidget {
  final DetailScreenArguments args;

  const DetailScreenScreen({Key? key, required this.args}) : super(key: key);
  static const String routeName = '/detail_movie';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(args.movieName),
      ),
      body: MovieDetailBody(movieId: args.movieId),
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:movie_app/presentation/appbar/appbar_detail.dart';
// // import 'package:movie_app/presentation/home/movie/detail_movie/cost_widget.dart';
// // import 'package:movie_app/presentation/home/movie/detail_movie/plot_title_widget.dart';
// // import 'package:movie_app/presentation/home/movie/player/movie_player_widget.dart';
// // import 'detail_movie/cost_title_widget.dart';
// // import 'detail_movie/plot_widget.dart';
// // import 'detail_movie/trailer_movie_widget.dart';
// // import 'detail_movie/trailer_title_widget.dart';

// class DetailScreenArguments {
//   final int movieId;
//   final String movieName;
//   DetailScreenArguments({
//     required this.movieId,
//     required this.movieName,
//   });
// }

// class DetailScreen extends StatefulWidget {
//   final DetailScreenArguments args;
//   static const String routeName = '/detail_movie';
//   DetailScreen({Key? key, required this.args}) : super(key: key);

//   @override
//   _DetailScreenState createState() => _DetailScreenState();
// }

// class _DetailScreenState extends State<DetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(args.movieName),
//       ),
//       backgroundColor: Colors.black,
//       body: ListView(
//         children: [
//           InkWell(
//             child: Text('1111111a',style: TextStyle(color: Colors.red),),
//             onTap: (){
//               print('a');
//           },),
//           // MovieScreen(),
//           // ThePlotTitle(),
//           // SizedBox(height: 5,),
//           // TheCostTitle(),
//           // TheCost(),
//           // SizedBox(height: 5,),
//           // TheTrailerTitle(),
//           // TrailerMovie(),
//         ],
//       ),
//     );
//   }
// }