import 'package:flutter/material.dart';

class ImageAssetLesson extends StatelessWidget {
  const ImageAssetLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image and Asset Lesson',
        ),
      ),
      body: Container(
        child: Center(
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/Chara.png',
                  width: 50,
                  height: 50,
                  image: 'https://braincore.id/static/images/eric.png',
                ),
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: Image.asset(
                      'assets/images/Chara.png',
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: Image.network(
                      'https://braincore.id/static/images/eric.png',
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: Image.asset(
                      'assets/images/Chara.png',
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: Image.network(
                      'https://braincore.id/static/images/eric.png',
                    ),
                  ),
                ),
                Expanded(
                  child: Placeholder(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
