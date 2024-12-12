import 'package:flutter/material.dart';
import 'package:kk4rpl_project/ui/widgets/login_animation.dart';

class LoginAnimation extends StatefulWidget {
  const LoginAnimation({super.key});

  @override
  State<LoginAnimation> createState() => _LoginAnimationState();
}

class _LoginAnimationState extends State<LoginAnimation> with SingleTickerProviderStateMixin {
  var statusClick = 0;

  TextEditingController editingControllerUser = TextEditingController();
  TextEditingController editingControllerPass = TextEditingController();

  late AnimationController animationControllerButton;

  @override
  void initState() {
    super.initState();
    
    editingControllerUser = TextEditingController(text: '');
    editingControllerPass = TextEditingController(text: '');
    
    animationControllerButton = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        setState(() {
          statusClick = 0;
        });
      }
    });
  }

  Future<void> _playAnimation() async {
    try {
      await animationControllerButton.forward();
      await animationControllerButton.reverse();
    } on TickerCanceled {
      // Tangani kasus jika animasi dibatalkan
    }
  }

  @override
  void dispose() {
    animationControllerButton.dispose();
    editingControllerUser.dispose();
    editingControllerPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"), 
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(162, 146, 199, 0.8),
                Color.fromRGBO(51, 51, 63, 0.9),
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 270),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10),
                            ),
                            TextField(
                              controller: editingControllerUser,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                ),
                                hintText: "Username"
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10),
                            ),
                            TextField(
                              controller: editingControllerPass,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                ),
                                hintText: "Password"
                              ),
                            ),
                            TextButton(
                              onPressed: null,
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.only(top: 220, bottom: 30),
                              ),
                              child: const Text(
                                "Don't have an account? Sign Up here",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.5
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  statusClick == 0
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              statusClick = 1;
                            });
                            _playAnimation();
                          },
                          child: const SignIn())
                      : StartAnimation(
                          buttonController: animationControllerButton,
                          user: editingControllerUser.text,
                          password: editingControllerPass.text,
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Container(
        alignment: Alignment.center,
        width: 320,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.red[700],
          borderRadius: const BorderRadius.all(Radius.circular(30))
        ),
        child: const Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3
          ),
        ),
      ),
    );
  }
}