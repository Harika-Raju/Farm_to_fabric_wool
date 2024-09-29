import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  final List<Order> orders;

  OrdersPage({required this.orders});

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 183, 61),
        title: Row(
          children: [
            FlutterLogo(), // Replace with your logo image path
            SizedBox(width: 12.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search button press
              // You can implement search functionality here
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 67, 188, 84),
        currentIndex: _currentIndex,
        onTap: (index) {
          // Handle bottom navigation bar item tap
          setState(() {
            _currentIndex = index;
          });

          // You can add your navigation logic here based on the index
          switch (index) {
            case 0:
              Navigator.pushNamed(context, "homepage");
              break;
            case 1:
              Navigator.pushNamed(context, "cartscreen");
              break;
            case 2:
              Navigator.pushNamed(context, "profile");
              break;
            case 3:
              Navigator.pushNamed(context, "settings");
              break;
          }
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_max_outlined,
              color: Colors.black,
            ),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: "Cart",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: "Profile",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: "Settings",
          )
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      body: widget.orders.isEmpty
          ? const Center(
              child: Text('No orders available.'),
            )
          : ListView.builder(
              itemCount: widget.orders.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OrderCard(order: widget.orders[index]),
                );
              },
            ),
    );
  }
}

class Order {
  final String orderId;
  final List<String> products;
  final double totalAmount;
  final DateTime orderDate;

  Order({
    required this.orderId,
    required this.products,
    required this.totalAmount,
    required this.orderDate,
  });
}

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('Order ID: ${order.orderId}'),
            subtitle: Text('Order Date: ${order.orderDate.toLocal()}'),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Products: ${order.products.join(', ')}'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Total Amount: \$${order.totalAmount.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  List<Order> orders = [
    Order(
      orderId: '123456',
      products: ['Product A', 'Product B'],
      totalAmount: 99.99,
      orderDate: DateTime.now(),
    ),
    // Add more orders as needed
  ];

  runApp(MaterialApp(
    home: OrdersPage(orders: orders),
  ));
}
