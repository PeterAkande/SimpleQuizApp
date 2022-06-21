import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class TutorialTile extends StatelessWidget {
  final String videoUrl;
  final String subject;
  const TutorialTile({
    Key? key,
    required this.videoUrl,
    required this.subject,
  }) : super(key: key);

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Cannot launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkResponse(
        splashColor: Colors.red,
        onTap: () {
          _launchUrl(videoUrl);
        },
        child: Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 17),
                  color: Colors.black,
                  blurRadius: 17,
                  spreadRadius: -22,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 5 / 2,
                child: SvgPicture.asset('assets/teacher_svg.svg',
                    color: Colors.red),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 60,
                child: Card(
                  elevation: 7,
                  child: Center(
                    child: Text(
                      subject,
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
