import 'package:flutter/material.dart';
import 'package:pfaffhack/components/home_screen_kid/video_list.dart';
import 'package:pfaffhack/components/users_list.dart';
import 'package:pfaffhack/data/users_data.dart';
import 'package:pfaffhack/data/videos_data.dart';

//https://fiverr-res.cloudinary.com/images/q_auto,f_…sign-youtube-thumbnail-for-motivational-video.jpg
//https://fourminutebooks.com/wp-content/uploads/2016/06/best-motivational-books-28.png
//	https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/motivational-books-1568998313.png
//https://www.developgoodhabits.com/wp-content/uploa…the-only-skill-that-matter-superhuman-academy.png
class TabOneKid extends StatelessWidget {
  const TabOneKid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VideoList(),
        const SizedBox(
          height: 30,
        ),
        UsersList(
          title: "Next Appointments",
          data: fighters.sublist(0, 2),
        ),
        const SizedBox(
          height: 30,
        ),
        UsersList(
          title: "Available Appointments",
          data: fighters,
        )
      ],
    );
  }
}
