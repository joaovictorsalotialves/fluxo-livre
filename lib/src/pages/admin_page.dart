import 'package:flutter/material.dart';
import 'users_page.dart';

class AdminPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'title': 'Estudantes', 'icon': Icons.school},
    {'title': 'Relatórios', 'icon': Icons.insert_chart},
    {'title': 'Configurações', 'icon': Icons.settings},
  ];

  AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Fluxo Livre - ADMIN',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                if (item['title'] == 'Estudantes') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UsersPage()),
                  );
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: Colors.black87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item['icon'], color: Colors.blueAccent, size: 40),
                      SizedBox(height: 10),
                      Text(
                        item['title'],
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
