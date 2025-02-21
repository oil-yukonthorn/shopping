import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/formatter/number_input_formatter.dart';
import 'package:shopping_app/models/product.dart';
import 'package:shopping_app/screens/cart_screen/controllers/cart_screen_controller.dart';

class CartSummary extends StatelessWidget {
  final List<Product> cart;
  final VoidCallback onCheckout;
  final CartScreenController controller;
  const CartSummary({
    super.key,
    required this.cart,
    required this.onCheckout,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {

   controller.calculateTotal(cart);

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.indigo.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Subtotal",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.indigo,
                ),
              ),
              Text(NumberInputFormatter.formatNumber(controller.subtotal.value)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Promotion discount",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.indigo,
                  )),
              Text(
                NumberInputFormatter.formatNumberOptional(-controller.discount.value),
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                NumberInputFormatter.formatNumber(controller.totel.value),
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 26,
                  color: Colors.indigo,
                ),
              ),
              ElevatedButton(
                onPressed: onCheckout,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                child: const Text(
                  "Checkout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
