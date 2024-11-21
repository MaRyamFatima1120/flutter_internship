import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/getX_Utils/sharedpreference_screen/custom_textform_field.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  void togglePassword() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  //Color

  Color buttonColor = const Color(0xff8420f3);
  Color gradientColor1 = const Color(0xff1976d3);
  Color gradientColor2 = const Color(0xff1361c2);

  String? validData(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter your Name.";
    }
    return null;
  }

  String? validEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter your Email";
    }
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "Please Enter a valid Email address";
    }
    return null;
  }

  String? validPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Password";
    }

    String errorMessage = "";

    if (value.length < 8) {
      errorMessage += "*.Password must be at least 8 characters long.\n";
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      errorMessage +=
          "*.Password must contain at least one uppercase letter.\n";
    }

    if (!value.contains(RegExp(r'[a-z]'))) {
      errorMessage +=
          "*.Password must contain at least one lowercase letter.\n";
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      errorMessage += "*.Password must contain at least one number.\n";
    }
    if (!value.contains(RegExp(r'[!@#$%^&*()|}{?><]'))) {
      errorMessage +=
          "*.Password must contain at least one Special Character.\n";
    }

    if (errorMessage.isNotEmpty) {
      return errorMessage.trim();
    }

    return null;
  }

  //save Function

  void _saveFunction() async{
    if (_formKey.currentState?.validate() ?? false) {

      String name = _nameController.text.toString();
      String emailName = _emailController.text.toString();
      String password = _passwordController.text.toString();

      String hiddenPassword = '*' * password.length;

      Get.snackbar(
        "",
        "",
        titleText: Text(
          "Personal Information",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: gradientColor1,
              ),
        ),
        backgroundColor: Colors.white,
        messageText: Text(
          "Name:$name\nEmail:$emailName\nPassword:$hiddenPassword",
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: Colors.black),
        ),
        duration: Duration(seconds: 3),

      );

      await Future.delayed(Duration(seconds: 3));
      SharedPreferences sp=await SharedPreferences.getInstance();
      sp.setString("user", _nameController.text.toString());
      sp.setString("email", _emailController.text.toString());
      sp.setString("password", _passwordController.text.toString());
      sp.setBool("isLogin",true);
      Navigator.pushNamed(context, '/third');

    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();


  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   backgroundColor: buttonColor,
      //   title: Text(
      //     "Login Screen",
      //     style: Theme.of(context).textTheme.titleMedium,
      //   ),
      //
      //   iconTheme: const IconThemeData(
      //     color: Colors.white,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          width: width * 1,
          height: height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              gradientColor1,
              gradientColor2,
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Login",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                        CustomTextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                          keyboardType: TextInputType.text,
                          controller: _nameController,
                          enabledColor: const Color(0xffe7e9eb),
                          focusedColor: const Color(0xff5fd2a3),
                          focusedError: const Color(0xffe7e9eb),
                          hintText: "Enter Your Name",
                          hintTextStyle: Theme.of(context).textTheme.titleSmall,
                          validator: validData,
                        ),
                        Text(
                          "Email",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                        CustomTextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          enabledColor: const Color(0xffe7e9eb),
                          focusedColor: const Color(0xffe7e9eb),
                          focusedError: const Color(0xffe7e9eb),
                          hintText: "Enter Email",
                          hintTextStyle: Theme.of(context).textTheme.titleSmall,
                          validator: validEmail,
                        ),
                        Text(
                          "Password",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                        CustomTextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                          keyboardType: TextInputType.text,
                          controller: _passwordController,
                          enabledColor: const Color(0xffe7e9eb),
                          focusedColor: const Color(0xffe7e9eb),
                          focusedError: const Color(0xffe7e9eb),
                          hintText: "Enter Password",
                          hintTextStyle: Theme.of(context).textTheme.titleSmall,
                          obscureText: _isObscure,
                          suffixIcon: IconButton(
                              onPressed: () {
                                togglePassword();
                              },
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: _isObscure
                                    ? Colors.white
                                    : Colors.redAccent,
                              )),
                          validator: validPassword,
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTapDown: (_) {
                            setState(() {
                              buttonColor = const Color(0xff377e6b);
                            });
                          },
                          onTapUp: (_) {
                            setState(() {
                              buttonColor = const Color(0xff00c97f);
                            });
                          },
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                _saveFunction();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  minimumSize: const Size(350, 70),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )),
                              child: Text(
                                "Login",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontSize: 24, color: gradientColor1),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
