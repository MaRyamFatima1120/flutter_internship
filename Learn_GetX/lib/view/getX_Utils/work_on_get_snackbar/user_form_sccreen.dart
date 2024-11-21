import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/view/getX_Utils/sharedpreference_screen/custom_textform_field.dart';
class UserFormScreen extends StatefulWidget {
  const UserFormScreen({super.key});

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _fatherController = TextEditingController();
  final TextEditingController _motherController = TextEditingController();

  Color buttonColor=const Color(0xff00c97f);

  String? validData(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Field.";
    }
    return null;
  }

  //save Function

  void _saveFunction() {
    if (_formKey.currentState?.validate() ?? false) {
      String name = _nameController.text.toString();
      String fatherName = _fatherController.text.toString();
      String motherName = _motherController.text.toString();

      Get.snackbar(
        "",
        "",
        titleText: Text(
          "Personal Information",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        backgroundColor: const Color(0xff00c97f),
        messageText: Text(
          "Name:$name\nFather Name:$fatherName\nMother Name:$motherName",
          style: Theme.of(context).textTheme.titleSmall,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff377e6b),
        automaticallyImplyLeading: false,
        title: Text(
          "Student Data",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/third');
          }, icon:const Icon(Icons.arrow_right))
        ],

        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Personal Information",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.black, fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Complete Name as per CNIC *",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: const Color(0xff464a53)),
                      ),
                      CustomTextFormField(
                        keyboardType: TextInputType.text,
                        controller: _nameController,
                        enabledColor: const Color(0xffe7e9eb),
                        focusedColor: const Color(0xff5fd2a3),
                        hintText: "Enter Your Name",
                        validator: validData,
                        focusedError: const Color(0xff5fd2a3),
                      ),
                      Text(
                        "Father Name *",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: const Color(0xff464a53)),
                      ),
                      CustomTextFormField(
                        keyboardType: TextInputType.text,
                        controller: _fatherController,
                        enabledColor: const Color(0xffe7e9eb),
                        focusedColor: const Color(0xff5fd2a3),
                        focusedError: const Color(0xff5fd2a3),
                        hintText: "Enter Father Name",
                        validator: validData,
                      ),
                      Text(
                        "Mother Name *",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: const Color(0xff464a53)),
                      ),
                      CustomTextFormField(
                        keyboardType: TextInputType.text,
                        controller: _motherController,
                        enabledColor: const Color(0xffe7e9eb),
                        focusedColor: const Color(0xff5fd2a3),
                        focusedError: const Color(0xff5fd2a3),
                        hintText: "Enter Mother Name",
                        validator: validData,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTapDown: (_){
                          setState(() {
                            buttonColor= const Color(0xff377e6b);
                          });
                        },
                        onTapUp: (_){
                          setState(() {
                            buttonColor=const Color(0xff00c97f);
                          });
                        },
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              _saveFunction();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:buttonColor,
                                minimumSize: const Size(150, 70),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                            child: Text(
                              "Save",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(fontSize: 24),
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
    );
  }
}
