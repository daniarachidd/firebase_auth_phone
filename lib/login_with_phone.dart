import 'package:flutter/material.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  bool otpVisibility = false;
  String verificationID = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Phone Login'),
      ),
      body:  Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: "Phone number"),
              keyboardType: TextInputType.phone,
            ),

            Visibility(
              child: TextField(
              controller: otpController,
              decoration: const InputDecoration(),
              keyboardType: TextInputType.number,
            ),
              visible: otpVisibility,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  if(otpVisibility){
                    //ToDo: verify otp
                  }
                  else {
                    //Todo: login with phone
                  }
                },
                child: Text(otpVisibility ? "Verify" : "Login")),
          ],

        ),
      ),
    );
  }
}
