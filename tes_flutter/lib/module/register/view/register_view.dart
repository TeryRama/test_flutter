import 'package:flutter/material.dart';
import 'package:tes_flutter/core.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    // bool _isObscure = true;

    String? nameC;
    String? emailC;
    String? passC;

    return Theme(
      data: ThemeData(
        primaryColor: const Color(0xFF6F35A5),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: const Color(0xFF6F35A5),
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF1E6FF),
          iconColor: Color(0xFF6F35A5),
          prefixIconColor: Color(0xFF6F35A5),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Column(
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 16.0 * 2),
                        ],
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Expanded(
                            flex: 8,
                            child: Form(
                              child: Column(
                                children: [
                                  TextFormField(
                                    onChanged: (value) =>
                                        Form.of(primaryFocus!.context!).save(),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    cursorColor: const Color(0xFF6F35A5),
                                    onSaved: (name) {
                                      nameC = name;
                                    },
                                    decoration: const InputDecoration(
                                      hintText: "Your name",
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.person),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  TextFormField(
                                    onChanged: (value) =>
                                        Form.of(primaryFocus!.context!).save(),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    cursorColor: const Color(0xFF6F35A5),
                                    onSaved: (email) {
                                      emailC = email;
                                    },
                                    decoration: const InputDecoration(
                                      hintText: "Your email",
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.mail),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: TextFormField(
                                      onChanged: (value) =>
                                          Form.of(primaryFocus!.context!)
                                              .save(),
                                      obscureText: true,
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      cursorColor: const Color(0xFF6F35A5),
                                      onSaved: (pass) {
                                        passC = pass;
                                      },
                                      decoration: const InputDecoration(
                                        hintText: "Your password",
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Icon(Icons.lock),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  Hero(
                                    tag: "login_btn",
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(emailC!)));
                                        // RegExp emailRegexp = RegExp(
                                        //     r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                                        bool a =
                                            await CustomDatabaseLogin.saveData(
                                                nameC!,
                                                emailC!,
                                                passC!,
                                                'user');

                                        if (a == true) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LoginView(),
                                            ),
                                          );
                                        }
                                        // if (nameController.text.isEmpty ||
                                        //     emailController.text.isEmpty ||
                                        //     passController.text.isEmpty) {
                                        //   ScaffoldMessenger.of(context)
                                        //       .showSnackBar(SnackBar(
                                        //           content: Text(
                                        //               "Semua kolom harus diisi!")));
                                        // } else if (!emailRegexp
                                        //     .hasMatch(emailController.text)) {
                                        //   ScaffoldMessenger.of(context)
                                        //       .showSnackBar(SnackBar(
                                        //           content: Text(
                                        //               "Format email tidak valid!")));
                                        // } else {
                                        //   bool a = await CustomDatabaseLogin
                                        //       .saveData(
                                        //           nameController.text,
                                        //           emailController.text,
                                        //           passController.text,
                                        //           'user');

                                        //   if (a == true) {
                                        //     Navigator.push(
                                        //       context,
                                        //       MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             LoginView(),
                                        //       ),
                                        //     );
                                        //   }
                                        // }
                                      },
                                      child: Text(
                                        "sign up".toUpperCase(),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        "Already have an Account ? ",
                                        style:
                                            TextStyle(color: Color(0xFF6F35A5)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return const LoginView();
                                              },
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          "Sign In",
                                          style: TextStyle(
                                            color: Color(0xFF6F35A5),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
