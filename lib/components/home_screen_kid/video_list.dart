import 'package:flutter/material.dart';
import 'package:pfaffhack/data/videos_data.dart';

class VideoList extends StatelessWidget {
  const VideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                videos_data.length,
                (index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      height: 190,
                      width: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: NetworkImage(videos_data[index].url!),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            color: Colors.black.withOpacity(0.3),
                          ),
                          Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: 50,
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ))),
          )),
    );
  }
}
