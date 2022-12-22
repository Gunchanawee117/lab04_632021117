import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

int isRadio = 3;
bool isCheck = false;

class _InputPageState extends State<InputPage> {
  final GlobalKey<FormState> _formKey = GlobalKey(); //form เก็บสถานะของform

  TextEditingController _text1 = TextEditingController();
  TextEditingController _text2 = TextEditingController();
  TextEditingController _text3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Center(
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const Text("textFormField #1 Simple TextFormField"),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: 'User',
                    hintText: 'Enter Username',
                    filled: true,
                    fillColor: Colors.grey[300],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  controller: _text1, //เรียกตัวคอนโทรลจากที่ประกาศด้านบน
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                Text("textFormField #2 KeyboardType and Password"),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    filled: true,
                    fillColor: Colors.grey[300],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  controller: _text2, //เรียกตัวคอนโทรลจากที่ประกาศด้านบน
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true, //ซ่อนข้อความ
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                Text("textFormField #3 Decoration"),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    hintText: 'Enter Username',
                    filled: true,
                    fillColor: Colors.grey[300],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  controller: _text3, //เรียกตัวคอนโทรลจากที่ประกาศด้านบน
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                Text("show Input: ${_text1.text}"),
                Text("show Input: ${_text2.text}"),
                Text("show Input: ${_text3.text}"),
                RadioListTile(
                  title: Text('item title #1'),
                  controlAffinity: ListTileControlAffinity.platform,
                  value: 1,
                  activeColor: Colors.red,
                  groupValue: isRadio,
                  onChanged: (value) {
                    setState(() {
                      isRadio = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('item title #2'),
                  controlAffinity: ListTileControlAffinity.platform,
                  value: 2,
                  activeColor: Colors.yellow,
                  groupValue: isRadio,
                  onChanged: (value) {
                    setState(() {
                      isRadio = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('item title #3'),
                  controlAffinity: ListTileControlAffinity.platform,
                  value: 3,
                  activeColor: Colors.blue,
                  groupValue: isRadio,
                  onChanged: (value) {
                    setState(() {
                      isRadio = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('checkbox #1'),
                  value: isCheck,
                  onChanged: (value) {
                    setState(() {
                      isCheck = value!;
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }
}

//632021117 Chanawee Wanasuwanich