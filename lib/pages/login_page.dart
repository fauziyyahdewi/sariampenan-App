import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/MySetup.dart';
import 'package:sariampenan/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final txtPassword = TextEditingController();
  final txtHp = TextEditingController();
  bool showPassword = false;
  bool _isLoading = false;

  void _login() async {
    setState(() {
      _isLoading = true;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 40, bottom: 25.0),
            width: double.infinity, // harus ada
            child: Container(
              alignment: Alignment.center,
              height: 130.0,
              child: Image.asset(
                'assets/images/ship.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextField(
                  autofocus: true,
                  controller: txtHp,
                  textInputAction: TextInputAction.next,
                  style: GoogleFonts.poppins(fontSize: 18),
                  onSubmitted: (value) {
                    //
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Nomor Handphone",
                    hintStyle: GoogleFonts.poppins(fontSize: 18),
                    contentPadding: EdgeInsets.only(left: 8.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 2),
                      child: Text(
                        '+62',
                        style: GoogleFonts.poppins(
                            color: mySetup.primaryColor, //  Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    prefixIconConstraints:
                        BoxConstraints(), // harus ada agar ditengah
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),
                child: Text(
                  'Masukkan Nomor Handphone',
                  style: GoogleFonts.poppins(color: mySetup.primaryColor),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                child: TextField(
                  autofocus: true,
                  controller: txtPassword,
                  obscureText: !showPassword,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (value) {},
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Kata Sandi",
                    hintStyle: GoogleFonts.poppins(fontSize: 18),
                    contentPadding: EdgeInsets.only(left: 8.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color:
                            (!showPassword) ? Colors.grey[500] : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),
                child: Text(
                  'Masukkan Kata Sandi',
                  style: GoogleFonts.poppins(color: mySetup.primaryColor),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                child: GestureDetector(
                  onTap: _login,
                  child: Container(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    decoration: ShapeDecoration(
                      color: mySetup.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
