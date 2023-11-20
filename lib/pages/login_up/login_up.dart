import 'package:flutter/material.dart';
import 'package:login_singup/pages/singup_pages/singup_pages.dart';
import 'package:login_singup/pages/widget/widget.dart';

class SingUpPages1 extends StatefulWidget {
  const SingUpPages1({super.key});

  @override
  State<SingUpPages1> createState() => _SingUpPagesState();
}

class _SingUpPagesState extends State<SingUpPages1> {
  TextEditingController email = TextEditingController();
  TextEditingController passworld = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/l1.jpg"),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Welcome back!",
                      style:
                      TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Login in to your existnt accout of Q Allure",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Form(
                      child: Column(
                        children: [
                          MyTextFormField(
                            label: Text(
                              "email",
                              style: TextStyle(fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.person,
                              size: 20,
                            ),
                            hinttext: "email@gmail.com",
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MyTextFormField(
                            label: Text(
                              "passworld",
                              style: TextStyle(fontSize: 16),
                            ),
                            icon: Icon(
                              Icons.lock,
                              size: 20,
                            ),
                            hinttext: "passworld",
                            counttext: "Forgot Passworld?",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 170,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 4,
                                shadowColor: Colors.indigoAccent),
                            onPressed: () {},
                            child: const Text("LOG IN"),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text("Or connect using",style: TextStyle(color: Colors.black54),),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 45,
                              width: 150,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.indigo,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                onPressed: () {},
                                icon: const Icon(Icons.facebook_sharp),
                                label: const Text("Facebook"),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            SizedBox(
                              height: 45,
                              width: 150,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.redAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                onPressed: () {},
                                icon: Image.asset("assets/images/google.png"),
                                label: const Text("Facebook"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpPages()));
                          },
                          child: Text("Sing Up"),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
