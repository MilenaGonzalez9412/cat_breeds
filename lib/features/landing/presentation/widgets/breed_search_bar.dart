import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BreedSearchBar extends HookWidget {
  final VoidCallback onChanged;

  const BreedSearchBar(this.onChanged, {super.key});

  @override
  Widget build(BuildContext context) {
    final searchBreedsController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        onChanged: (value) {},
        controller: searchBreedsController,
        autofocus: true,
        decoration: InputDecoration(
          labelText: 'Search breed',
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
