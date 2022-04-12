part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'E-Potek',
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    labelText: 'E-mail',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: defaultMargin),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('SignUp'),
                    onPressed: () {},
                  )),
              Row(
                children: <Widget>[
                  const Text('Already Have account?'),
                  TextButton(
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //signup screen
                      Navigator.pushNamed(context, '/signin');
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ],
          )),
    );
  }
}
