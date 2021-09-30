import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheCost extends StatefulWidget {
  TheCost({Key? key}) : super(key: key);

  @override
  _TheCostState createState() => _TheCostState();
}

class _TheCostState extends State<TheCost> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: 8,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemBuilder:(context, index) {
          return Column(
            children: [
              Container(
                width: 70,
                height: 70,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70 / 2),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 2,
                  ),
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w138_and_h175_face/nTJ4B0z6PUZ43UoLxN6R52PxTDz.jpg',
                    fit: BoxFit.cover,
                  ),
                ),

              ),
              
              Text('Alvaro',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
              Text('Morte',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            ],
          );
        }
      ),
    );
  }
}