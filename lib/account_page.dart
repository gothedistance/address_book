import 'package:address_book/main.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key, this.userAccount, required this.onSubmit});
  final UserAccount? userAccount;
  final void Function(UserAccount account) onSubmit;

  @override
  State<AccountPage> createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    var inputValue = UserAccount(
        firstName: "", firstNameKana: "", lastName: "", lastNameKana: "", phoneNumber: "");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('連絡先追加', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: formKey,
                  child: Column(children: [
                    Container(
                        alignment: Alignment.topCenter,
                        child: const Icon(
                          Icons.account_circle,
                          size: 100,
                          color: Colors.blue,
                        )),
                    const Divider(
                      height: 5,
                      thickness: 0.3,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(text: "姓", style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                      text: "（必須）",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.userAccount?.lastName,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '姓が未入力です';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.teal)),
                                ),
                                onSaved: (newValue) => inputValue.lastName = newValue ?? "",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(text: "姓フリガナ", style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                      text: "（必須）",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.userAccount?.lastNameKana,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '姓（フリガナ）が未入力です';
                                  }
                                  return null;
                                },
                                onSaved: (newValue) => inputValue.lastNameKana = newValue ?? "",
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.teal)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(text: "名", style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                      text: "（必須）",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.userAccount?.firstName,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '名が未入力です';
                                  }
                                  return null;
                                },
                                onSaved: (newValue) => inputValue.firstName = newValue ?? "",
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.teal)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(text: "名フリガナ", style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                      text: "（必須）",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '名（フリガナ）が未入力です';
                                  }
                                  return null;
                                },
                                initialValue: widget.userAccount?.firstNameKana,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.teal)),
                                ),
                                onSaved: (newValue) => inputValue.firstNameKana = newValue ?? "",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(text: "電話番号", style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                      text: "（必須）",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.userAccount?.phoneNumber,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '電話番号が未入力です';
                                  }
                                  return null;
                                },
                                onSaved: (newValue) => inputValue.phoneNumber = newValue ?? "",
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.teal)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "メールアドレス", style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.userAccount?.email,
                                onSaved: (newValue) => inputValue.email = newValue ?? "",
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.teal)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(text: "メモ", style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                initialValue: widget.userAccount?.description,
                                onSaved: (newValue) => inputValue.description = newValue ?? "",
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 50),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.teal)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        widget.onSubmit(inputValue);
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text("完了"))),
          )
        ],
      ),
    );
  }
}
