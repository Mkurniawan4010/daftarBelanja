import 'package:daftar_belanja/SERVICES/shopping_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  final ShoppingService _shoppingService = ShoppingService();
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(hintText: 'Masukan nama'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _shoppingService.addShoppingList(_controller.text);
              _controller.clear();
            },
          ),
        ],
      ),
    );
  }
}
