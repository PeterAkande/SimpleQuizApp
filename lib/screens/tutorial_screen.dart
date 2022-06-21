import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/models.dart';
import '../components/components.dart';

class TutorialScreen extends StatelessWidget {
  final String routeName = '/tutorial_screen';
  const TutorialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
         SystemUiOverlayStyle(statusBarColor: Colors.red.withOpacity(.9)));
    var size = MediaQuery.of(context).size;
    return Container(
  
      color: Colors.red,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: SvgPicture.asset(
              'assets/teacher_svg.svg',
              color: const Color(0x3DFFFFFF),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 35, 25, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tutorials Page',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Welcome to the tutorials page\nHere, you would find tutorials to various subjects. ',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: size.height * 0.15,
                  ),
                  Expanded(
                    //Todo: Use a gridview.builder instead  of GridView.count
                    child: GridView.count(
                  
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: .95,
                      children: const [
                        TutorialTile(
                            videoUrl: 'https://youtu.be/18RPsa9Ry8U',
                            subject: 'Math'),
                        TutorialTile(
                            videoUrl: 'https://youtu.be/18RPsa9Ry8U',
                            subject: 'English'),
                        TutorialTile(
                            videoUrl: 'https://youtu.be/18RPsa9Ry8U',
                            subject: 'Basic Science'),
                        TutorialTile(
                            videoUrl: 'https://youtu.be/18RPsa9Ry8U',
                            subject: 'Intro Tech'),
                        TutorialTile(
                            videoUrl: 'https://youtu.be/18RPsa9Ry8U',
                            subject: 'Civic Education'),
                        TutorialTile(
                            videoUrl: 'https://youtu.be/18RPsa9Ry8U',
                            subject: 'Verbal'),
                        TutorialTile(
                            videoUrl: 'https://youtu.be/18RPsa9Ry8U',
                            subject: 'Chemistry'),
                        TutorialTile(
                            videoUrl: 'https://youtu.be/18RPsa9Ry8U',
                            subject: 'PHE'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
