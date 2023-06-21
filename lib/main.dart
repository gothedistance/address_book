import 'package:flutter/material.dart';

import 'account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PhoneListPage(),
    );
  }
}

class UserAccount {
  UserAccount(
      {required this.lastName,
      required this.lastNameKana,
      required this.firstName,
      required this.firstNameKana,
      required this.phoneNumber,
      this.email = '',
      this.description = ''});
  String lastName;
  String lastNameKana;
  String firstName;
  String firstNameKana;
  String phoneNumber;
  String? email;
  String? description;
}

class PhoneListPage extends StatefulWidget {
  const PhoneListPage({super.key});

  @override
  State createState() => PhoneListState();
}

class PhoneListState extends State {
  final List<UserAccount> _phoneList = <UserAccount>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('連絡先', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            iconSize: 40,
            color: Colors.blue,
            onPressed: () async {
              await Navigator.of(context).push<void>(MaterialPageRoute(builder: (context) {
                return AccountPage(onSubmit: (data) {
                  setState(() {
                    _phoneList.add(data);
                  });
                });
              }));
            },
          ),
        ],
      ),
      body: _phoneList.isNotEmpty
          ? ListView.builder(
              itemCount: _phoneList.length,
              itemBuilder: (context, index) {
                return Dismissible(
                    key: UniqueKey(),
                    background: Container(
                      color: Colors.red,
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    child: ListTile(
                      title: Text(_phoneList[index].firstName),
                      subtitle: Text(_phoneList[index].phoneNumber),
                      onTap: () async {
                        await Navigator.of(context)
                            .push<void>(MaterialPageRoute(builder: ((context) {
                          return AccountPage(
                              userAccount: _phoneList[index],
                              onSubmit: (data) {
                                setState(() {
                                  _phoneList[index] = data;
                                });
                              });
                        })));
                      },
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        _phoneList.removeAt(index);
                      });
                    });
              })
          : const Center(
              child: Text('連絡先なし', style: TextStyle(fontSize: 30)),
            ),
    );
  }
}
