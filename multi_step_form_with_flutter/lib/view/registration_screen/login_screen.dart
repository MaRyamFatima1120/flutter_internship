import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    int currentStep =0;
    List<Step> steps =[
      Step(
          title: Text("Email"), content:Text("Content For Email")

      ),

      Step(
          title: Text("Password"), content:Text("Content For Password")),
      Step(
          title: Text("Forget"), content:Text("Content For Forget")),
    ];
    return Scaffold(

      body: Container(
        width: 100.w,
        height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg.jpg",
            ),
              fit: BoxFit.cover
            )
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SIGN IN",style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize:16.sp,
              ),),
              Text("Welcome! Please enter your details",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize:16.sp,
              ),),
              SizedBox(width: 40.h,),

            Stepper(
              steps: steps,
            currentStep: currentStep,
              onStepContinue: (){
                setState(() {
                  if(currentStep<steps.length-1){
                    currentStep +=1;
                  }
                });
              },
              onStepCancel:(){
                if(currentStep>0){
                  setState(() {
                    currentStep--;
                  });
                }},
              controlsBuilder: (BuildContext context,ControlsDetails details){
                return Row(
                  children: [
                    ElevatedButton(
                      onPressed: details.onStepContinue,
                      child: Text('Continue'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff55826b), // Continue button color
                      ),
                    ),
                    TextButton(
                      onPressed: details.onStepCancel,
                      child: Text('Cancel'),
                    ),
                  ],
                )
              },

            )


            ],
          )
      ),
    );

  }

}
