import 'package:api/api.dart';
import 'package:api/home.dart';
import 'package:api/input_field.dart';
import 'package:api/user.dart';
import 'package:api/users_screen.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  Signin({super.key});

  TextEditingController e = TextEditingController();
  TextEditingController u = TextEditingController();

  @override
  Widget build(BuildContext context) {
    fetchUsers();
    return Scaffold(
      backgroundColor: const Color(0xff2d3365),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UsersScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(height: 20),
                  InputField('email', Icons.email, e),
                  const SizedBox(height: 20),
                  InputField('username', Icons.person, u),
                ],
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                for (int i = 0; i < users.length; i++) {
                  User user = users[i];
                  if (user.email == e.text || user.username == u.text) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  } else {
                    print('email or username is wrong');
                  }
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 75,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff6e83f5),
                ),
                child: const Text(
                  'sigin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
