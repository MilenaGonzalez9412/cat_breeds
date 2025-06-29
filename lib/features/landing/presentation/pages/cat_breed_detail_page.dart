import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/cat_breed.dart';

class CatBreedDetailPage extends StatelessWidget {
  static const name = 'breed-detail';

  final CatBreed catBreed;
  const CatBreedDetailPage({super.key, required this.catBreed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.pop()),
        title: Text(catBreed.name),
        centerTitle: true,
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
    return Column(
      children: [
        catBreed.image != null
            ? Image.network(
              catBreed.image!.url,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress != null) {
                  return Center(child: CircularProgressIndicator());
                }
                return child;
              },
            )
            : Image.network(
              'https://i.pinimg.com/736x/1f/f7/4b/1ff74b5a68ff857ec39654e33a4306d3.jpg',
            ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(catBreed.description), Text(catBreed.lifeSpan)],
            ),
          ),
        ),
      ],
    );
  }
}
