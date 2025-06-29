import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/providers.dart';

class BreedSearchField extends ConsumerWidget {
  const BreedSearchField({
    super.key,
    required TextEditingController searchBreedsController,
  }) : _searchBreedsController = searchBreedsController;

  final TextEditingController _searchBreedsController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        onChanged: (value) {
          ref.read(searchBreedsQueryProvider.notifier).state = value;
        },
        controller: _searchBreedsController,
        decoration: InputDecoration(
          labelText: 'Search by breed',
          suffixIcon:
              _searchBreedsController.text.isEmpty
                  ? Icon(Icons.search)
                  : IconButton(
                    onPressed: () {
                      _searchBreedsController.clear();
                      ref.read(searchBreedsQueryProvider.notifier).state = '';
                    },
                    icon: Icon(Icons.cancel),
                  ),
        ),
      ),
    );
  }
}
