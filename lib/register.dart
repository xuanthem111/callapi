import 'package:flutter/material.dart';

import 'bottomnavigation.dart';

class App6 extends StatelessWidget {
  const App6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Regirster(),
    );
  }
}

class Regirster extends StatefulWidget {
  const Regirster({Key? key}) : super(key: key);

  @override
  _RegirsterState createState() => _RegirsterState();
}

class _RegirsterState extends State<Regirster> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var txtUserName = TextEditingController();
  var txtPhone = TextEditingController();
  var txtEmail = TextEditingController();
  var txtPassword = TextEditingController();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      controller: txtUserName,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Vui long nhap ten !!!';
        }
        return null;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      controller: txtEmail,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Vui Long nhap Email!!!.';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Vui lòng nhập một địa chỉ email hợp lệ';
        }

        return null;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      controller: txtPhone,
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Vui long so dien thoai !!!';
        }

        return null;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      controller: txtPassword,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Vui lòng nhập Password';
        }

        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Regirst'),
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                _buildEmail(),
                _buildPhoneNumber(),
                _buildPassword(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: (){
                    if (!_formKey.currentState!.validate()) {
                    print("Not Oke");
                    } else {
                        print("Oke");
                      var userName = txtUserName.text;
                      var email = txtEmail.text;
                      var passWord = txtPassword.text;
                      var phone = txtPhone.text;
                      var alert = AlertDialog(
                          content: Text(
                              " UserName : ${userName},UserName : ${email},UserName : ${phone},Password : ${passWord}"));
                      showDialog(
                          context: context,
                          builder: (context) {
                            return alert;
                          });
                    }
                  },
                )
              ],
            ),
          ),
        )),
        bottomNavigationBar:BottomNavigation() ,
        );
  }
}
