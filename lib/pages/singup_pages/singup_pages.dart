import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_singup/pages/widget/widget.dart';

class SingUpPages extends StatefulWidget {
  const SingUpPages({super.key});

  @override
  State<SingUpPages> createState() => _SingUpPagesState();
}

class _SingUpPagesState extends State<SingUpPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Let's Get Started",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Center(
                  child: Text(
                    "Creato an account to Q  Allure to go all features",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Column(
                  children: [
                    MyTextFormField(
                      hinttext: "Username",
                      label: Text("username"),
                      icon: Icon(Icons.person),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    MyTextFormField(
                      label: Text("Email"),
                      icon: Icon(Icons.email),
                      hinttext: "email and phone number",
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    MyTextFormField(
                      label: Text("Phone"),
                      icon: Icon(Icons.phone_iphone),
                      hinttext: "phone ",
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    MyTextFormField(
                      label: Text("Passworld"),
                      icon: Icon(Icons.lock),
                      hinttext: "passworld",
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    MyTextFormField(
                      label: Text("Confrm Passworld"),
                      icon: Icon(Icons.lock),
                      hinttext: "passworld",
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                SizedBox(
                  width: 200,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 4,
                      shadowColor: Colors.indigoAccent,
                    ),
                    onPressed: () {},
                    child: const Text("GREATE"),
                  ),
                ),
                SizedBox(height: 45,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alrady have an account"),
                    TextButton(
                      onPressed: () {},
                      child: Text("Login here"),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
