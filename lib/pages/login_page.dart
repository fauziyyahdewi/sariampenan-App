import 'package:flutter/material.dart';
import 'package:sariampenan/model/user.dart';
import 'package:sariampenan/pages/main_page.dart';
import 'package:sariampenan/session_manager.dart';
import 'package:sariampenan/utilities.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final SessionManager sessionManager = SessionManager();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool showPassword = false;
  bool _isLoading = false;

  void _login() async {
    setState(() {
      _isLoading = true;
    });

    String phoneNumber = _phoneController.text;
    String password = _passwordController.text;

    // Cari user yang sesuai dengan data login
    User? user = users.firstWhere(
      (user) => user.phoneNumber == phoneNumber && user.password == password,
      orElse: () => User(
          id: '', name: '', phoneNumber: '', email: '', password: '', role: ''),
    );

    if (user.id.isNotEmpty) {
      // Pengguna ditemukan dan memiliki data valid
      await sessionManager.saveUser(user);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    } else {
      // Tampilkan pesan kesalahan jika login gagal
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Login gagal: Nomor telepon atau kata sandi salah',
            style: tFOnt(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          duration: const Duration(milliseconds: 1500),
          width: double.infinity,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }

    setState(() {
      _isLoading = false;
    });
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
                  controller: _phoneController,
                  textInputAction: TextInputAction.next,
                  style: tFOnt(fontSize: 18),
                  keyboardType: TextInputType.phone,
                  onSubmitted: (value) {
                    //
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Nomor Handphone",
                    hintStyle: tFOnt(fontSize: 18),
                    contentPadding: EdgeInsets.only(left: 8.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: Text(
                        '+62',
                        style: tFOnt(
                            color: mColor, //  Colors.red,
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
                  style: tFOnt(color: mColor),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                child: TextField(
                  autofocus: true,
                  controller: _passwordController,
                  obscureText: !showPassword,
                  textInputAction: TextInputAction.done,
                  style: tFOnt(fontSize: 18),
                  onSubmitted: (value) {},
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Kata Sandi",
                    hintStyle: tFOnt(fontSize: 18),
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
                  style: tFOnt(color: mColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _login,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 16, 9, 61),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: _isLoading
                        ? const SizedBox(
                            height: 25,
                            width: 25,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2.0,
                            ),
                          )
                        : Text(
                            'Login',
                            style: tFOnt(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
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
