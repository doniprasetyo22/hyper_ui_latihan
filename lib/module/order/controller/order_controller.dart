import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/order_view.dart';

class Order {
  final String orderId;
  final String productName;
  final int quantity;
  final double price;

  Order({
    required this.orderId,
    required this.productName,
    required this.quantity,
    required this.price,
  });
}

class OrderController extends State<OrderView> {
  static late OrderController instance;
  late OrderView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  final List<Order> orders = List.generate(
    10,
    (index) => Order(
      orderId: 'ORD-00${index + 1}',
      productName: 'Product ${index + 1}',
      quantity: (index + 1) * 2,
      price: (index + 1) * 15.0,
    ),
  );

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
