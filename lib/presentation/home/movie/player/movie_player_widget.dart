import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MovieScreen extends StatefulWidget {
  MovieScreen({Key? key}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  late VideoPlayerController videoPlayerController;
  late Future<void> videoPlayerFuture;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(
        'http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
    videoPlayerFuture = videoPlayerController.initialize();
    videoPlayerController.setLooping(true);
  }
  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 120.0,
            height: 150.0,
            decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2.0),
                        ),
            shape: BoxShape.rectangle,
            image: new DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://image.tmdb.org/t/p/w300_and_h450_bestv2/8j12tohv1NBZNmpU93f47sAKBbw.jpg"),
            ),
            ),
          ),
        ],
      ),
    );
  }
}