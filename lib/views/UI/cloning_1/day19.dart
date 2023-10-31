// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Day19 extends StatelessWidget {
  const Day19({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    height: 350,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 300,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/img/Jashwant-44.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/56092435?v=4'),
                            radius: 50,
                          ),
                        ),
                        const Positioned(
                          top: 15,
                          right: 20,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                        const Positioned(
                          top: 15,
                          left: 20,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // color: Colors.blue,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bangalore Tour for Flutter Devs',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This is the random description for topic',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InfoWidget(
                    icon: Icons.favorite_rounded,
                    text: '20',
                  ),
                  InfoWidget(
                    icon: Icons.upload,
                    text: '34',
                  ),
                  InfoWidget(
                    icon: Icons.message,
                    text: '82',
                  ),
                  InfoWidget(
                    icon: Icons.face,
                    text: '295',
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                  "If you would like to contribute to the plugin (e.g. by improving the documentation, solving a bug or adding a cool new feature), please carefully review our contribution guide and send us your pull request.If you would like to contribute to the plugin (e.g. by improving the documentation, solving a bug or adding a cool new feature), please carefully review our contribution guide and send us your pull request."),
            )
          ],
        ),
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Icon(icon)
      ],
    );
  }
}
