import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter unit test"),
      ),
      body: _pageBody(),
    );
  }

  Widget _pageBody() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          _mediumVerticalSpace(),
          _headerText(),
          _mediumVerticalSpace(),
          _emailAndPasswordFields(),
          _loginButton(),
          _signInView(),
        ]),
      );

  Widget _mediumVerticalSpace() => const SizedBox(
        height: 20,
      );

  Widget _loginButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
          child: const Text(
            'Login',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.0),
          ),
        ),
      );

  Widget _signInView() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'Does not have an account?',
        style: TextStyle(
          color: Colors.black45,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      TextButton(
          onPressed: () {},
          child: const Text(
            'Sign In',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ))

    ],
  );
  Widget _headerText() => const Text(
        'Unit Text',
        style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget _emailAndPasswordFields() => Column(
        children: [
          TextField(
            controller: emailTextController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8),
                hintText: 'email',
                labelText: 'email'),
          ),
          TextField(
            controller: passwordTextController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8),
                hintText: 'password',
                labelText: 'password'),
          ),
          _smallVerticalSpacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ))
        ],
      );

  Widget _smallVerticalSpacer() => const SizedBox(
        height: 10,
      );
}
