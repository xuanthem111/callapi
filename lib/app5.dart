import 'package:flutter/material.dart';
import 'package:testflutter/register.dart';

class MyApp5 extends StatelessWidget {
  const MyApp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var fkey = GlobalKey<FormState>();
  var txtUserName = TextEditingController();
  var txtPassWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('App Login'),
      ),
      body: Form(
        key: fkey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Sign In",style: TextStyle(fontSize: 20,color: Colors.red), ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty)
                  return "User name cannot empty";
                else
                  return null;
              },
              controller: txtUserName,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Please input your user name",
                  labelText: "User name"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                controller: txtPassWord,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "passname cannot empty";
                  else if (value.length < 6)
                    return "passname minium of password 6";
          
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Please input your password",
                  labelText: "Passname",
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (fkey.currentState!.validate()) {
                    print("Oke");
                    var userName = txtUserName.text;
                    var passWord = txtPassWord.text;
                    var alert =
                        AlertDialog(content: Text(" UserNam : ${userName},Password : ${passWord}"));
                    showDialog(
                        context: context,
                        builder: (context) {
                          return alert;
                        });
                  } else
                    print("Not Oke");
                },
                child: Text("Login")),
                SizedBox(height: 20,),
                InkWell(
                 onTap: () {
                    Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => App6()),
                    );
                },
                child: new Padding(
                padding: new EdgeInsets.all(10.0),
                child:  Text("Resgiter...",style: TextStyle(fontSize: 20),),
                 ),
               ),
          ],
        ),
      ),
    );
  }
}
