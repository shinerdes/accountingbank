import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class LoginMainPage extends ConsumerStatefulWidget {
  const LoginMainPage({super.key});

  @override
  _LoginMainPageState createState() => _LoginMainPageState();
}

class _LoginMainPageState extends ConsumerState<LoginMainPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _handleSignIn() async {
    try {
      final account = await _googleSignIn.signIn();

      if (account != null) {
        final auth = await account.authentication;
        final idToken = auth.idToken;

        print(auth);
        print(idToken);

        // Send the ID token to the server
        // final response = await http.post(
        //   Uri.parse('http://<your-server-ip>:<port>/auth/google'),
        //   body: {'idToken': idToken},
        // );

        // if (response.statusCode == 200) {
        //   print('Server response: ${response.body}');
        // } else {
        //   print('Failed to authenticate with server');
        // }
      } else {
        print('not logged in');
      }
    } catch (error) {
      print('Sign in failed: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/AccountingBank.png',
            width: 250,
            height: 250,
          ),
          const Gap(150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  // _handleSignIn();
                  // TODO: Add your onTap functionality here
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Image.asset(
                      'assets/image/google.png',
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

/*

login

*/
