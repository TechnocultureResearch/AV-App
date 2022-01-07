import 'package:av_model/Screens/Constants/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  var focusNode;
  bool _obscureText;
  bool value = false;

  @override
  void initState() {
    _obscureText = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryGrey,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 100),
              Image.asset(
                  "assets/images/purple-golf-cart-golf-carts-in-albuquerque-nm-golf-carts-lawn-mower-tool-vehicle-transportation-transparent-png-1453193 1.png"),
              const SizedBox(height: 10),
              Container(
                width: 330,
                height: 360,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text("Log in to your account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 50,
                        width: 282,
                        child: TextFormField(
                          style: const TextStyle(
                              color: Colors.black,
                              decorationColor: Colors.white),
                          // initialValue: state.phoneNumber.value,
                          // focusNode: focusNode,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
                            prefixIcon:
                                Image.asset("assets/icons/username_prefix.png"),
                            focusColor: Colors.black,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: TextFieldThemeColor)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: TextFieldThemeColor)),
                            //floatingLabelBehavior: FloatingLabelBehavior.never,
                            prefix:const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 16),
                            ),
                            hintText: "Username",
                            hintStyle: const TextStyle(color: Colors.grey),
                            // errorText: 'Please ensure the number entered is valid'
                          ),
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 50,
                        width: 282,
                        child: TextFormField(
                          //focusNode: focusNode,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            prefixIcon:
                                Image.asset("assets/icons/password_prefix.png"),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: TextFieldThemeColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            labelStyle: const TextStyle(
                              color: TextFieldThemeColor,
                            ),
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              color: TextFieldThemeColor,
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: TextFieldThemeColor)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color:TextFieldThemeColor)),
                            prefix: const Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2, vertical: 16)),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(width: 10),
                        Checkbox(
                          value: this.value,
                          onChanged: (bool value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                        const Text("Remember me"),
                        const SizedBox(width: 45),
                        GestureDetector(
                            onTap: () {}, child: const Text("Forgot password")),
                      ],
                    ),
                    Container(
                      width: 282,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: ButtonColor),
                          onPressed: () {},
                          child: const Text("Log in")),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("New to SDS?"),
                        const SizedBox(width: 3),
                        GestureDetector(
                          onTap: () {},
                          child: const Text("Register now",
                              style: TextStyle(color: Colors.blue)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
