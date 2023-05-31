import 'package:flutter/material.dart';

import 'main.dart';

class CreateNumberPage extends StatefulWidget {
  const CreateNumberPage({super.key, required this.phoneModel});
  final PhoneModel phoneModel;

  @override
  State<StatefulWidget> createState() => CreateNumberState();
}

class CreateNumberState extends State<CreateNumberPage> {
  final TextEditingController _inputNameController = TextEditingController();
  final TextEditingController _inputNumberController = TextEditingController();

  @override
  void dispose() {
    _inputNameController.dispose();
    _inputNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                            decoration: const InputDecoration(
                              border:
                                  OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
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
                            decoration: const InputDecoration(
                              border:
                                  OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
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
                            decoration: const InputDecoration(
                              border:
                                  OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
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
                            decoration: const InputDecoration(
                              border:
                                  OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
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
                            decoration: const InputDecoration(
                              border:
                                  OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
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
                                TextSpan(text: "メールアドレス", style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: const InputDecoration(
                              border:
                                  OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
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
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 50),
                              border:
                                  OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(children: [
                  Flexible(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(const Size(400, 30)), // サイズを指定
                        ),
                        child: const Text('完了する',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
                  )
                ]),
              ])),
        ));
  }
}
