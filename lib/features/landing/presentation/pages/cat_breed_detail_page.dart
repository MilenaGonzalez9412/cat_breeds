import 'package:cat_breeds/common_widgets/custom_text_display.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/cat_breed.dart';

const String defaultImageUrl =
    'https://i.pinimg.com/736x/1f/f7/4b/1ff74b5a68ff857ec39654e33a4306d3.jpg';

class CatBreedDetailPage extends StatelessWidget {
  static const name = 'breed-detail';

  final CatBreed catBreed;
  const CatBreedDetailPage({super.key, required this.catBreed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => context.pop(),
          color: Colors.white,
        ),
        title: Text(catBreed.name),
      ),

      body: _CatBreedDetailView(catBreed: catBreed),
    );
  }
}

class _CatBreedDetailView extends StatelessWidget {
  final CatBreed catBreed;
  const _CatBreedDetailView({required this.catBreed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(
              catBreed.image?.url ?? defaultImageUrl,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress != null) {
                  return Center(child: CircularProgressIndicator());
                }
                return child;
              },
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextDisplay(
                      title: 'Description: ',
                      content: catBreed.description,
                    ),
                    SizedBox(height: 4),
                    CustomTextDisplay(
                      title: 'Origin Country: ',
                      content: catBreed.origin,
                    ),
                    SizedBox(height: 4),
                    CustomTextDisplay(
                      title: 'Intelligence: ',
                      content: catBreed.intelligence.toString(),
                    ),
                    SizedBox(height: 4),
                    CustomTextDisplay(
                      title: 'Adaptability: ',
                      content: catBreed.adaptability.toString(),
                    ),
                    SizedBox(height: 4),
                    CustomTextDisplay(
                      title: 'Life span: ',
                      content: '${catBreed.lifeSpan} years',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
