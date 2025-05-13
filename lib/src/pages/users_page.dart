import 'package:flutter/material.dart';

// Simula uma API com lista de usuários
Future<List<Map<String, dynamic>>> fetchUsers() async {
  await Future.delayed(Duration(seconds: 1)); // simula delay de rede
  return [
    {'id': 1, 'name': 'João Silva'},
    {'id': 2, 'name': 'Maria Oliveira'},
    {'id': 3, 'name': 'Carlos Santos'},
  ];
}

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  late Future<List<Map<String, dynamic>>> _usersFuture;

  @override
  void initState() {
    super.initState();
    _usersFuture = fetchUsers();
  }

  void _editUser(int id) {
    // lógica para editar usuário
    print('Editar usuário $id');
  }

  void _deleteUser(int id) {
    // lógica para excluir usuário
    print('Excluir usuário $id');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _usersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar usuários'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Nenhum usuário encontrado'));
          }

          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                title: Text(user['name']),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit, color: Colors.blue),
                      onPressed: () => _editUser(user['id']),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _deleteUser(user['id']),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
