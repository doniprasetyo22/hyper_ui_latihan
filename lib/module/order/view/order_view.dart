import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/order_controller.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  Widget build(context, OrderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Order"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: List.generate(controller.orders.length, (index) {
              final order = controller.orders[index];
              return Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  title: Text(order.productName),
                  subtitle: Text('Order ID: ${order.orderId}'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Qty: ${order.quantity}'),
                      Text('Price: \$${order.price.toStringAsFixed(2)}'),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  @override
  State<OrderView> createState() => OrderController();
}
